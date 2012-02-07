<?php

namespace app\controllers;

use li3_filesystem\storage\FileSystem;

class FilesController extends \lithium\action\Controller {
	public function index() {
		$content = FileSystem::read('default', 'lithium-meetup.txt');
		return compact('content');
	}
}

?>
