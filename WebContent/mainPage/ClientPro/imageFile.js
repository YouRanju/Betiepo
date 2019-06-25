function b(event) {
	    event.target.type = 'file';
	    event.target.style.visible = 'hidden';
	    //event.target.style.display = 'none';

	    please = setInterval(function() {
	        event.target.onchange = img(event.target);  
	    }, 10);    
	}

function img(input) {
    if ( input.files && input.files[0] ) {
        var FR= new FileReader();
            FR.onload = function(e) {
                clearInterval(please);
                input.type = 'image';
                input.src = e.target.result;
                input.style.visible = 'visible';
                //input.style.display = 'block';
            };       

            FR.readAsDataURL( input.files[0] );
    
            istype = true;
    } 
}