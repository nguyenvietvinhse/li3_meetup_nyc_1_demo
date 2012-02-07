<?php

namespace app\extensions\job;

class Hello extends \li3_gearman\extensions\service\gearman\Job {
	protected function _work() {
		$workload = $this->getWorkLoad();

		$subject = $workload->subject ?: 'World';
		echo 'Hello '.$subject.'!'.PHP_EOL;
	}
}

?>
