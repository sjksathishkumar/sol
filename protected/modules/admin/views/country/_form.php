<div class="row-fluid">
    <div class="span12">
        <div class="box box-color box-bordered">
            <div class="box-title">
                <?php if(strstr(Yii::app()->request->requestUri,'update')){?>
                    <h3><i class="icon-table"></i>Update Country</h3>
                <?php }else{?>
                    <h3><i class="icon-table"></i>Add New Country</h3>
                <?php }?>
            </div>
            <div class="box-content nopadding">
                <?php
                $form = $this->beginWidget('CActiveForm', array(
                    'id' => 'country-form',
                    'enableAjaxValidation' => false,
                    'htmlOptions' => array(
                        'class' => 'form-horizontal form-bordered form-validate',
                        'enctype' => 'multipart/form-data',
                    )
                        ));
                ?>
                <div class="control-group">
                    <?php echo $form->labelEx($model, 'countryName', array('class' => 'control-label', 'for' => 'textfield')); ?>
                    <div class="controls">
                        <?php echo $form->textField($model, 'countryName', array('size' => 60, 'maxlength' => 255, 'data-rule-required' => 'true', 'class' => 'input-xxlarge')); ?>
                        <?php echo $form->error($model, 'countryName'); ?>
                    </div>
                </div>
                <div class="control-group">
                    <?php echo $form->labelEx($model, 'countryStatus', array('class' => 'control-label', 'for' => 'textfield')); ?>
                    <div class="controls">
                        <?php echo $form->dropDownList($model, 'countryStatus', array('' => 'Select', '1' => 'Active', '0' => 'Inactive'), array('data-rule-required' => 'true', 'class' => 'input-xlarge select2-me')); ?>
                        <?php echo $form->error($model, 'countryStatus'); ?>
                    </div>
                </div>

                <div class="note"><strong>Note :</strong> <span class="required">*</span> Indicates mandatory fields.</div>
                <div class="form-actions">
                    <?php echo CHtml::submitButton('Submit', array('class' => 'btn btn-primary','title'=>'Submit','alt'=>'Submit','id'=>'addCountryBtn')); ?>
                    <?php echo CHtml::link('Cancel', array('/admin/country'), array('class' => 'btn','title'=>'Cancel','alt'=>'Cancel')); ?>
                </div>
                <?php $this->endWidget(); ?>
            </div>
        </div>
    </div>
</div>