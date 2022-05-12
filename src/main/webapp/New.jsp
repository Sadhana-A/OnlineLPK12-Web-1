<!DOCTYPE html>
<html lang="en">
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="ace.js" type="text/javascript" charset="utf-8"></script>
<script src="mode-sparc.js" type="text/javascript"></script>
  <link rel = "stylesheet" href  = "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">    
<title>ACE in Action</title>
<style type="text/css" media="screen">
    #editor { 
		position: fixed;
		margin: 0;
		float: left;
		width: 55%;
		height: 100%;
		top: 50;
    }
	#column-resizer{
		position: fixed;
		left: 56%;
		cursor: col-resize;
		margin: 0;
		padding: 0;
		width: 0.8%;
		height: 100%;
		background-color: #DDD;
		border-radius: 3px;
	}
	#results{
	    position: relative;
		margin: 0;
		float: right;
		width: 39%;
	}
	ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
padding-left:2em;
}

ul li {
padding-left:2em;

}

li {
  display: inline;
}
	
</style>
</head>
<body>
 <script src = "https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>    
  <script src = "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>    

<div id="wrapper" class="toggled">
      

            <div id="wrap">
            <div id="navbar">
            <header>
            <nav class="navbar navbar-dark bg-primary">
            <div class="container-fluid">
            <div class="collapse navbar-collapse">
                
			 <ul class="nav navbar-nav navbar-left">

<form class="navbar-form navbar-left" id="qform"> <!-- Add role -->
                        <div class="form-group">
<div class="col-md-6">
                            <input type="text" class="form-control" placeholder="Enter query" name="txt_query" id="txt_query" size="50">
</div>
                        </div>

                        <button type="submit" class="btn btn-default" id="btn_getQuery" value="getQuery">
                            Submit
                        </button>
                    </form>
</ul>

                <ul class="nav navbar-nav navbar-right">


<!-- QUERY FORM -->
                    

                    <!-- GET ANSWER SETS BUTTON -->
                    <li> <button type="submit" class="btn btn-default navbar-btn" id="btn_getAnswerSets" value="getAnswerSets">
                        Get Answer Sets
                    </button> </li>
                    
		    <li> </li>

					<!-- GET Drawing/Animation SETS BUTTON -->
                    <li> <button type="submit" class="btn btn-default navbar-btn" id="btn_getAnimation" value="getAnimation" onclick="PostSparc()">  
                        Execute
                    </button> </li>
		    
                    <li> </li>

                   
                </ul>
            </div> <!-- /.nav-collapse -->
            </div>
            </nav>
            </header>
            </div>
            </div>
        </div>

<div id="page-content-wrapper">
	<div id="editor"></div>
	<div id="column-resizer"></div>
	<div id="results">sdasdasdas</div>
</div>


<script src="resizer.js" type="text/javascript"></script>
<script type="text/javascript">
window.onload = function(){

getApiData();
var response = getApiData();
}

function getApiData()
{
//let userId = sessionStorage.getItem("userId");
let input = "sorts #people = {sara, bob}. predicates father(#people, #people). rules father(bob, sara)";
var response = null;
let apiUrl = "http://wave.ttu.edu/ajax.php";
$.get(apiUrl, function(data, status){
response = data
buildLessonList(response);
});
return response;
}
</script>
</body>
</html>