<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <div>
    <form>
    	<textarea rows="10" cols="30" onclick="showOpen();">무슨 생각을 하고 계신가요?</textarea>
    <p align="right"><input type="submit"  value="올리기" ></p>
    </form>
    </div>
    
    
<script>
	function showOpen() {
		var url = "/test2";
		window.open(url, "chat", "height=400, width=300");
	}
</script>