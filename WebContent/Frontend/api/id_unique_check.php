<?php
	header("Content-Type: application/json; charset=UTF-8");
	header('Access-Control-Allow-Origin: *');
    header('Access-Control-Allow-Methods: GET, PUT, POST, DELETE, OPTIONS');
    
	/** 변수 설정 */
	$user_id = FALSE;	// 파라미터로 전달받을 사용자 아이디
	$result = "FAIL";	// 출력할 결과 문자열

	/** 파라미터 받기 */
	if (isset($_POST['user_id'])) {
		$user_id = $_POST['user_id'];
	}

	/** 아이디가 존재한다면? */
	if ($user_id) {
		// 입력값이 아이디 리스트 안에 포함되어 있는지 검사
		$list = array('user1', 'user2', 'user3', 'user4');
		if (in_array($user_id, $list) == FALSE) {
			$result = "OK";
		}
	}
?>
{ "result": "<?=$result?>" }