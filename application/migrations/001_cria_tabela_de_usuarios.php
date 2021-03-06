<?php 
class Migration_Cria_tabela_de_usuarios extends CI_migration {
	
	public function up() {
		$this->dbforge->add_field(array(
			'id' => array('type' => 'INT','auto_increment' => true),
			'nome' => array('type' => 'varchar(255)'),
			'email' => array('type' => 'varchar(255)'),
			'login' => array('type' => 'varchar(255)'),
			'senha' => array('type' => 'varchar(255)')
		));
		$this->dbforge->add_key('id', true);
		$this->dbforge->create_table('usuarios');
	}

	public function down() {
		$this->dbforge->drop_table('usuarios');
	}
}