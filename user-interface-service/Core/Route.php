<?php
namespace Core;

/**
 * 
 * Class Route
 * 
 */
class Route
{

    /**
     * 
     * - Mảng lưu trữ route của ứng dụng
     * - Mỗi route sẽ gôm url, method, action và params
     * 
     */
    private $__routes;

    // Hàm khởi tạo
    public function __construct()
    {
        $this->__routes = [];
    }

    /**
     * 
     * Phương thức get
     * 
     * @param string $url URL cần so khớp
     * @param string|callable $action Hành động khi URL được gọi. Có thể là một callback hoặc một method trong controller
     * 
     * @return void
     * 
     */
    public function get(string $url, $action)
    {
            // Xử lý phương thức GET
            $this->__request($url, 'GET', $action);
    }

    /**
     * 
     * Phương thức POST
     * 
     * @param string $url URL cần so khớp
     * @param string|callable $action Hành động khi URL được gọi. Có thể là một callback hoặc một method trong controller
     * 
     * @return void
     * 
     */
    public function post(string $url, $action)
    {
         // Xử lý phương thức POST
         $this->__request($url, 'POST', $action);
    }
    
    /**
     * 
     * Xử lý phương thức
     * 
     * @param string $url URL cần so khớp
     * @param string $method method của route. GET hoặc POST
     * @param string|callable $action Hành động khi URL được gọi. Có thể là một callback hoặc một method trong controller
     * 
     * @return void
     * 
     */
    private function __request(string $url, string $method, $action)
    {
        // kiem tra xem URL co chua param khong. VD: post/{id}
        if (preg_match_all('/({([a-zA-Z]+)})/', $url, $params)) {
            $url = preg_replace('/({([a-zA-Z]+)})/', '(.+)', $url);
        }

        // Thay the tat ca cac ki tu / bang ky tu \/ (regex) trong URL.
        $url = str_replace('/', '\/', $url);
        $route = [
            'url' => $url,
            'method' => $method,
            'action' => $action,
            'params' => $params[2]
        ];
        array_push($this->__routes, $route);
    }
    
    /**
     * 
     * Hàm xử lý khi một URL được gọi
     * 
     * @param string $url URL được gọi đến server
     * @param string $method Phương thức url được gọi. GET | POST
     * 
     * @return void
     * 
     */
    public function map(string $url, string $method)
    {
        // Lặp qua các route trong ứng dụng, kiểm tra có chứa url được gọi không
        foreach ($this->__routes as $route) {
            // nếu route có $method
            if ($route['method'] == $method) {
                // kiểm tra route hiện tại có phải là url đang được gọi.
                $reg = '/^' . $route['url'] . '$/';
                if (preg_match($reg, $url, $params)) {
                    array_shift($params);
                    $this->__call_action_route($route['action'], $params);
                    return;
                }
            }
        }
    
        // nếu không khớp với bất kì route nào cả.
        echo '404 - Not Found';
        return;
    }
    private function __call_action_route($action, $params)
    {
        // Nếu $action là một callback (một hàm).
        if (is_callable($action)) {
            call_user_func_array($action, $params);
            return;
        }
        // Nếu $action là một phương thức của controller. VD: 'HomeController@index'.
        if (is_string($action)) {
            $action = explode('@', $action);
            if (sizeof($action) < 2) {
                $action[1] = 'index';
            }
            include_once PATH_ROOT . '/Controllers/' . $action[0] . '.php';
            $controller_name = 'Controllers\\' . $action[0];
            $controller = new $controller_name();
            call_user_func_array([$controller, $action[1]], $params);
            return;
        }
    }
}