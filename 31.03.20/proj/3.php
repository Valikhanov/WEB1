<?php

class User{
    public $name;
    public $login;
    public $password;
    function __construct($name,$login,$password){
        $this->name=$name;
        $this->login=$login;
        $this->password=$password;
        echo "Созданный класс'".__CLASS__."'.
      name: '{$this->name}';
      login: '{$this->login}';
      password: '{$this->password}';
      <br>\n";
    }
    function __clone(){
        echo "Клон Класса '".__CLASS__."'.
      name: '{$this->name}';
      login: '{$this->login}';
      password: '{$this->password}';
      <br>\n";
    }
    function __destruct(){
        echo "Удаленный класс '".__CLASS__."'. name: {$this->name};<br>\n";
    }
    function showInfo(){
        echo "Объект класса'".__CLASS__."'.
      name: '{$this->name}';
      login: '{$this->login}';
      password: '{$this->password}';
      <br>\n";
    }
}
class SuperUser extends User{
    public $role;

    function __construct($name,$login,$password,$role){
        parent::__construct($name,$login,$password);
        $this->role = $role;
        echo "Cоздан объект класса'".__CLASS__."'.
      role: '{$this->role}';
      <br>\n";
    }

    function showInfo(){
        echo "Объект класса '".__CLASS__."'.
      name: '{$this->name}';
      login: '{$this->login}';
      password: '{$this->password}';
      role: '{$this->role}';
      <br>\n";
    }
}
$user1 = new User("arlan","arlan01","q1w2e3r4t5y6");
$user2 = new User("Lesha","KyryZaGaragami@sigi.ru", "q1w2e3r4t5y6");
$user3 = new User("Baton","Baton@mail.ru","q1w2e3r4t5y6");

echo "<br>\n";

$user4 = new SuperUser("Fish","I_love_fishing@fish.ru","fish_fish","main");
echo "<br>\n";

$user4->showInfo();
echo "<br>\n";

unset($user1,$user2,$user3,$user4);

?>
