<?php
//1.  DB接続します
// require_once('funcs.php');
error_reporting(E_ALL);
ini_set('display_errors', '1');


try {
  //ID:'root', Password: xamppは 空白 ''
  $pdo = new PDO('mysql:dbname=gs_db;charset=utf8;host=localhost','root','');
} catch (PDOException $e) {
  exit('DBConnectError:'.$e->getMessage());
}

//２．データ取得SQL作成
$stmt = $pdo->prepare("SELECT * FROM gs_bm_table");
$status = $stmt->execute();


function h($str) {
  return htmlspecialchars($str, ENT_QUOTES, 'UTF-8');
}

//３．データ表示
$view="";
if ($status==false) {
    //execute（SQL実行時にエラーがある場合）
  $error = $stmt->errorInfo();
  exit("ErrorQuery:".$error[2]);

}else{
  //Selectデータの数だけ自動でループしてくれる
  //FETCH_ASSOC=http://php.net/manual/ja/pdostatement.fetch.php
  while( $result = $stmt->fetch(PDO::FETCH_ASSOC)){
    $view .="<p>";
    $view .='<a href="detail.php?id='  . $result['id']  .  '">';
    $view .= h($result['indate']) . " || ".($result['bookname']) . " || ".($result['bookurl']) . " || ".($result['booktext']);
    $view .='</a>';
    $view .="</p>";

    $view .='<a href="delete.php?id='  . $result['id']  .  '">';
        $view .= '<div style="text-align: right;"><button style="width: 120px; height: 50px; font-size: 16px; background-color: #add8e6; color: #333; border-radius: 10px;">削除</button></div>';
        $view .='</a>';

        $view .= '</p>';
  }

}
?>


<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>データベース一覧</title>
<link rel="stylesheet" href="css/range.css">
<link href="css/bootstrap.min.css" rel="stylesheet">
<style>div{padding: 10px;font-size:16px;}</style>
</head>
<body id="main">
<!-- Head[Start] -->
<header>
  <nav class="navbar navbar-default">
    <div class="container-fluid">
      <div class="navbar-header">
      <a class="navbar-brand" href="index.php">データ登録</a>
      </div>
    </div>
  </nav>
</header>
<!-- Head[End] -->

<!-- Main[Start] -->
<div>
    <div class="container jumbotron"><?= $view ?></div>
</div>
<!-- Main[End] -->

</body>
</html>
