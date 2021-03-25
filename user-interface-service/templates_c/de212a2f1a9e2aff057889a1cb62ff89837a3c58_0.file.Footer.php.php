<?php
/* Smarty version 3.1.38, created on 2021-03-24 15:37:21
  from 'D:\Project\_datn\user-interface-service\view\Layout\Footer.php' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.38',
  'unifunc' => 'content_605afa414a5967_48114109',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'de212a2f1a9e2aff057889a1cb62ff89837a3c58' => 
    array (
      0 => 'D:\\Project\\_datn\\user-interface-service\\view\\Layout\\Footer.php',
      1 => 1616193569,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_605afa414a5967_48114109 (Smarty_Internal_Template $_smarty_tpl) {
?>
                    </div>
                </div> <!-- content -->
                <!-- Footer Start -->
                <footer class="footer">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-12">
                                2019 &copy; Shreyu. All Rights Reserved. Crafted with <i class='uil uil-heart text-danger font-size-12'></i> by <a href="https://coderthemes.com" target="_blank">Coderthemes</a>
                            </div>
                        </div>
                    </div>
                </footer>
                <!-- end Footer -->
            </div>
            <?php $_smarty_tpl->_assignInScope('mes', getMes());?>
            <?php if ($_smarty_tpl->tpl_vars['mes']->value != null) {?>
                <?php echo '<script'; ?>
>
                    Swal.fire(
                        "<?php echo $_smarty_tpl->tpl_vars['mes']->value['title'];?>
",
                        '<?php echo $_smarty_tpl->tpl_vars['mes']->value['body'];?>
',
                        '<?php echo $_smarty_tpl->tpl_vars['mes']->value['type'];?>
'
                    )
                <?php echo '</script'; ?>
>
            <?php }?>
            <!-- ============================================================== -->
            <!-- End Page content -->
            <!-- ============================================================== -->
        <!-- Right bar overlay-->
    </body>
    <?php echo '<script'; ?>
 src="assets/js/app.min.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="js/Custom.js"><?php echo '</script'; ?>
>
</html><?php }
}
