<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
        <!-- Apple devices fullscreen -->
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <!-- Apple devices fullscreen -->
        <meta names="apple-mobile-web-app-status-bar-style" content="black-translucent" />
        <title>
            <?php echo CHtml::encode($this->pageTitle); ?>
        </title>
        <?php
        $baseUrl = Yii::app()->request->baseUrl;
        $cs = Yii::app()->getClientScript();
        if (!isset(Yii::app()->user->id))
        {

            /* Bootstrap */
            $cs->registerCssFile($baseUrl . '/css/bootstrap.min.css');
            /* Bootstrap responsive */
            $cs->registerCssFile($baseUrl . '/css/bootstrap-responsive.min.css');
            /* icheck */
            $cs->registerCssFile($baseUrl . '/css/plugins/icheck/all.css');
            /* Theme CSS */
            $cs->registerCssFile($baseUrl . '/css/style.css');
            /* Color CSS */
            $cs->registerCssFile($baseUrl . '/css/themes.css');

            /* jQuery */
            $cs->registerScriptFile($baseUrl . '/js/jquery.min.js');
            /* Nice Scroll */
            $cs->registerScriptFile($baseUrl . '/js/plugins/nicescroll/jquery.nicescroll.min.js');
            /* Validation */
            $cs->registerScriptFile($baseUrl . '/js/plugins/validation/jquery.validate.min.js');
            $cs->registerScriptFile($baseUrl . '/js/plugins/validation/additional-methods.min.js');
            /* icheck */
            $cs->registerScriptFile($baseUrl . '/js/plugins/icheck/jquery.icheck.min.js');
            /* Bootstrap */
            $cs->registerScriptFile($baseUrl . '/js/bootstrap.min.js');
            /* Theme framework */
            $cs->registerScriptFile($baseUrl . '/js/eakroko.min.js');
            $cs->registerScriptFile($baseUrl . '/js/common.js');
        }
        else
        {
            //Yii::app()->bootstrap->register();

            /* Bootstrap */
            $cs->registerCssFile($baseUrl . '/css/bootstrap.min.css');
            /* Bootstrap responsive */
            $cs->registerCssFile($baseUrl . '/css/bootstrap-responsive.min.css');
            /* jQuery UI */
            $cs->registerCssFile($baseUrl . '/css/plugins/jquery-ui/smoothness/jquery-ui.css');
            $cs->registerCssFile($baseUrl . '/css/plugins/jquery-ui/smoothness/jquery.ui.theme.css');
            /* Theme CSS */
            $cs->registerCssFile($baseUrl . '/css/style.css');
            /* Color CSS */
            $cs->registerCssFile($baseUrl . '/css/themes.css');
            /* auto suggest */
            $cs->registerCssFile($baseUrl . '/css/plugins/select2/select2.css');
            /* auto datepicker */
            $cs->registerCssFile($baseUrl . '/css/plugins/datepicker/datepicker.css');
            $cs->registerCssFile($baseUrl . '/css/plugins/daterangepicker/daterangepicker.css');

            /* Front JS */
            if (strstr($_SERVER['REQUEST_URI'], "deals/view"))
            {
                $cs->registerCssFile($baseUrl . '/css/layout.css');
            }


            /* jQuery */
            //$cs->registerScriptFile($baseUrl.'/js/jquery.min.js');
            $cs->registerCoreScript('jquery');

            /* Nice Scroll */
            $cs->registerScriptFile($baseUrl . '/js/plugins/nicescroll/jquery.nicescroll.min.js');

            /* imagesLoaded */
            $cs->registerScriptFile($baseUrl . '/js/plugins/imagesLoaded/jquery.imagesloaded.min.js');
            /* jQuery UI */
            $cs->registerScriptFile($baseUrl . '/js/plugins/jquery-ui/jquery.ui.core.min.js');
            $cs->registerScriptFile($baseUrl . '/js/plugins/jquery-ui/jquery.ui.widget.min.js');
            $cs->registerScriptFile($baseUrl . '/js/plugins/jquery-ui/jquery.ui.mouse.min.js');
            $cs->registerScriptFile($baseUrl . '/js/plugins/jquery-ui/jquery.ui.resizable.min.js');
            $cs->registerScriptFile($baseUrl . '/js/plugins/jquery-ui/jquery.ui.sortable.min.js');
            /* Touch enable for jquery UI */
            $cs->registerScriptFile($baseUrl . '/js/plugins/touch-punch/jquery.touch-punch.min.js');
            /* slimScroll */
            $cs->registerScriptFile($baseUrl . '/js/plugins/slimscroll/jquery.slimscroll.min.js');
            /* Bootstrap */
            $cs->registerScriptFile($baseUrl . '/js/bootstrap.min.js');
            /* auto suggest */
            $cs->registerScriptFile($baseUrl . '/js/plugins/select2/select2.min.js');
            /* Date Picker */
            $cs->registerScriptFile($baseUrl . '/js/plugins/datepicker/bootstrap-datepicker.js');
            /* Date Range Picker */
            $cs->registerScriptFile($baseUrl . '/js/plugins/daterangepicker/moment.min.js');
            $cs->registerScriptFile($baseUrl . '/js/plugins/daterangepicker/daterangepicker.js');


            /* Bootbox */
            $cs->registerScriptFile($baseUrl . '/js/plugins/bootbox/jquery.bootbox.js');
            $cs->registerScriptFile($baseUrl . '/js/plugins/form/jquery.form.min.js');
            /* Validation */
            $cs->registerScriptFile($baseUrl . '/js/plugins/validation/jquery.validate.min.js');
            $cs->registerScriptFile($baseUrl . '/js/plugins/validation/additional-methods.min.js');

            /* Wizard */
            $cs->registerScriptFile($baseUrl . '/js/plugins/wizard/jquery.form.wizard.min.js');
            $cs->registerScriptFile($baseUrl . '/js/plugins/mockjax/jquery.mockjax.js');
            /* icheck */
            $cs->registerScriptFile($baseUrl . '/js/plugins/icheck/jquery.icheck.min.js');
            /* Theme framework */
            $cs->registerScriptFile($baseUrl . '/js/eakroko.min.js');
            /* Theme scripts */
            $cs->registerScriptFile($baseUrl . '/js/application.min.js');
            /* Just for demonstration */
            $cs->registerScriptFile($baseUrl . '/js/demonstration.min.js');
            $cs->registerScriptFile($baseUrl . '/js/common.js');
            /*  Custom file upload */
            $cs->registerScriptFile($baseUrl . '/js/plugins/fileupload/bootstrap-fileupload.min.js');
            $cs->registerScriptFile('http://maps.google.com/maps/api/js?sensor=false');
        }
        ?>
        <!--[if lte IE 9]>
        <script src="<?php echo $baseUrl; ?>/js/plugins/placeholder/jquery.placeholder.min.js"></script>
        <script>
            $(document).ready(function() {

                $('input, textarea').placeholder();
            });
        </script>
        <![endif]-->

        <!-- Favicon -->
        <link rel="shortcut icon" href="<?php echo Yii::app()->request->baseUrl . '/images/favicon.ico'; ?>" />
        <!-- Apple devices Homescreen icon -->
        <link rel="apple-touch-icon-precomposed" href="<?php echo Yii::app()->request->baseUrl . '/img/apple-touch-icon-precomposed.png'; ?>" />
        <script>
            var SITE_ROOT_URL = '<?php echo Yii::app()->params["siteURL"];?>';
        </script>
    </head>
    <body <?php if (!isset(Yii::app()->user->isAdmin)) echo 'class="login"'; ?> data-layout-sidebar="fixed" data-layout-topbar="fixed" class="sidebar-left">
        <?php
        if (isset(Yii::app()->user->isAdmin))
        {
            ?>

            <!-- NAVIGATION STARTS-->
            <div id="navigation">
                <div class="container-fluid">
                    <?php echo CHtml::link(Yii::app()->params['SiteTitle'], array('/admin'), array('id' => 'brand')); ?>
                    <?php echo CHtml::link('<i class="icon-reorder"></i>', '#', array('class' => 'toggle-nav', 'rel' => 'tooltip', 'title' => 'Toggle navigation', 'data-placement' => 'bottom')); ?>

                    <ul class='main-nav'>
                        <li <?php if ($this->varAction == 'admin') echo 'class="active"'; ?>>
                            <?php echo CHtml::link('Dashboard', array('/admin')); ?>
                        </li>

                        <li <?php if ($this->varAction == 'cms') echo 'class="active"'; ?>>
                            <?php echo CHtml::link('<span>CMS</span> <span class="caret"></span>', 'javascript:void(0);', array('data-toggle' => 'dropdown', 'class' => 'dropdown-toggle')); ?>
                            <ul class="dropdown-menu">
                                <li>
                                    <?php echo CHtml::link('Manage CMS',array('/admin/cms'), array()); ?>
                                </li>
                                <li class='dropdown-submenu'>
                                    <?php echo CHtml::link('Manage Banners', 'javascript:void(0);', array()); ?>
                                    <ul class="dropdown-menu">
                                        <li>
                                            <?php echo CHtml::link('Banners Summary', array('/admin/banner')); ?>
                                        </li>
                                        <li>
                                            <?php echo CHtml::link('Add Banner', array('/admin/banner/add')); ?>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <?php echo CHtml::link('Manage Email Template',array('/admin/emailTemplate'), array()); ?>
                                </li>
                            </ul>
                        </li>
                        <li <?php if ($this->varAction == 'category') echo 'class="active"'; ?>>
                            <?php echo CHtml::link('<span>Category</span> <span class="caret"></span>', 'javascript:void(0);', array('data-toggle' => 'dropdown', 'class' => 'dropdown-toggle')); ?>
                            <ul class="dropdown-menu">
                                <li class='dropdown'>
                                    <?php echo CHtml::link('Manage Category', array('/admin/category'), array()); ?>
                                </li>
                                <li class='dropdown'>
                                    <?php echo CHtml::link('Add Category', array('/admin/category/create'), array()); ?>
                                </li>
                            </ul>
                        </li>
                        <li <?php if ($this->varAction == 'deals') echo 'class="active"'; ?>>
                            <?php echo CHtml::link('<span>Deals</span> <span class="caret"></span>', 'javascript:void(0);', array('data-toggle' => 'dropdown', 'class' => 'dropdown-toggle')); ?>
                            <ul class="dropdown-menu">
                                <li class='dropdown'>
                                    <?php echo CHtml::link('Manage Deals', array('/admin/deals'), array()); ?>
                                </li>
                                <li class='dropdown'>
                                    <?php echo CHtml::link('Add Deal', array('/admin/deals/create'), array()); ?>
                                </li>
                            </ul>
                        </li>
                        <li <?php if ($this->varAction == 'customer') echo 'class="active"'; ?>>
                            <?php echo CHtml::link('<span>Customers</span> <span class="caret"></span>', 'javascript:void(0);', array('data-toggle' => 'dropdown', 'class' => 'dropdown-toggle')); ?>
                            <ul class="dropdown-menu">
                                <li class='dropdown'>
                                    <?php echo CHtml::link('Manage Customer', array('/admin/customers'), array()); ?>
                                </li>
                                <li class='dropdown'>
                                    <?php echo CHtml::link('Add Customer', array('/admin/customers/create'), array()); ?>
                                </li>
                                <li class='dropdown'>
                                    <?php echo CHtml::link('Manage Orders', array('/admin/order'), array()); ?>
                                </li>
                            </ul>
                        </li>
                        <li <?php if ($this->varAction == 'reviews') echo 'class="active"'; ?>>
                            <?php echo CHtml::link('Customer Reviews', array('/admin/reviews'), array()); ?>
                        </li>
                        <li <?php if ($this->varAction == 'settings') echo 'class="active"'; ?>>
                            <?php echo CHtml::link('<span>Global Settings</span> <span class="caret"></span>', 'javascript:void(0);', array('data-toggle' => 'dropdown', 'class' => 'dropdown-toggle')); ?>
                            <ul class="dropdown-menu">
                                <li class='dropdown'>
                                    <?php echo CHtml::link('Configuration Settings', array('/admin/configurations'), array()); ?>
                                </li>
                                <li class='dropdown'>
                                    <?php echo CHtml::link('Manage Discount Coupons', array('/admin/coupons'), array()); ?>
                                </li>
                                <li class='dropdown'>
                                    <?php echo CHtml::link('Manage Countries', array('/admin/country'), array()); ?>
                                </li>
                                <li class='dropdown'>
                                    <?php echo CHtml::link('Manage States', array('/admin/state'), array()); ?>
                                </li>
                                <li class='dropdown'>
                                    <?php echo CHtml::link('Manage Cities', array('/admin/city'), array()); ?>
                                </li>
                            </ul>
                        </li>
                    </ul>
                    <div class="user">
                        <div class="dropdown">
                            <a href="javascript:void(0);" class='dropdown-toggle' data-toggle="dropdown">
                                <?php echo 'Welcome ' . Yii::app()->user->username; ?>
                                <img src="<?php echo $baseUrl; ?>/img/demo/admin.png" alt="">
                            </a>
                            <ul class="dropdown-menu">
                                <li>
                                    <?php echo CHtml::link('Change Password', array('/admin/admin/editprofile'), array()); ?>
                                </li>
                                <li>
                                    <?php echo CHtml::link('Logout', array('/admin/admin/logout'), array()); ?>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!-- NAVIGATION ENDS-->
            <div class="container-fluid" id="content" style="">
                <div id="left">
                    <div class="subnav">
                        <div class="subnav-title">
                            <a href="#" class='toggle-subnav'><i class="icon-angle-down"></i><span>Quick Links</span></a>
                        </div>
                        <ul class="subnav-menu">
                            <li>
                                <?php echo CHtml::link('Manage CMS', array('cms/')); ?>
                            </li>
                            <li>
                                <?php echo CHtml::link('Add Banner', array('banner/add')); ?>
                            </li>
                            <li>
                                <?php echo CHtml::link('Add Category', array('category/create')); ?>
                            </li>
                            <li>
                                <?php echo CHtml::link('Add Deal', array('deals/create')); ?>
                            </li>
                            <li>
                                <?php echo CHtml::link('Create Customer', array('customers/create')); ?>
                            </li>
                        </ul>
                    </div>
                </div>
                <div id="main">
                    <div class="container-fluid">
                        <!--<div class="page-header">-->
                        <div class="pull-right margin_top20">
                            <ul class="stats">
                                <li class='satgreen'>
                                    <i class="icon-calendar"></i>
                                    <div class="details">
                                        <span class="big"></span>
                                        <span></span>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <!--</div>-->
                        <?php
                    }
                    echo $content;
                    if (isset(Yii::app()->user->isAdmin))
                    {
                        ?>
                    </div>
                </div>
            </div>
            <div id="footer">
                <p><?php echo "Copyright © ".date('Y')." Promosol. All rights reserved.";?></p>
                <?php echo CHtml::link('<i class="icon-arrow-up"></i>', '#', array('class' => 'gototop')); ?>
            </div>
            <script type="text/javascript">
                window.onload = function(){
                    setTimeout(function () {
                        $("#breadcrumbs-msg").fadeOut('slow');
                    }, 5000);
                };
            </script>
        <?php } ?>
    </body>
</html>
