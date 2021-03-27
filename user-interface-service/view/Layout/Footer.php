
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
            {$mes = getMes()}
            {if $mes != null}
                <script>
                    {if $mes.title == '_logni'}
                    Swal.fire(
                        "{$mes.title}",
                        '{$mes.body}',
                        '{$mes.type}'
                    )
                    {else}
                    Toast.fire({
                        icon: '{$mes.type}',
                        title: '{$mes.body}'
                    })  
                    {/if}
                </script>
            {/if}
            <!-- ============================================================== -->
            <!-- End Page content -->
            <!-- ============================================================== -->
        <!-- Right bar overlay-->
    </body>
    <script src="assets/js/app.min.js"></script>
    <script src="js/Custom.js"></script>
</html>