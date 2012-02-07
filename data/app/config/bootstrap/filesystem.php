<?php

use li3_filesystem\storage\FileSystem;

FileSystem::config(array(
	'default' => array(
		'adapter' => 'File',
	),
));
