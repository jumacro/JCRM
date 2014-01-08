<?php
class Option extends AppModel {
	public $actsAs = array(
			'Upload.Upload' => array(
					'logo' => array(
							'fields' => array(
									'dir' => 'logo_dir'
							),
							'thumbnailSizes' => array(
									'l' => '50h'
							),
							'thumbnailMethod' => 'php', //GD library intead of imagick
							'thumbnailQuality' => '8'
					)
			)
	);
}