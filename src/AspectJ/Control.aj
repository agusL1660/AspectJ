package AspectJ;

 

public aspect Control {
	//El archivo main es GUI - InterfazJuego
	after():
			call(* *.start()){
				System.out.println("Se ha iniciado un nuevo hilo");
	}
	
	after():
		call(* *.daniar(*)){
			System.out.println("Se ha daniado a una entidad");
		
	}
	
	
	before():
		call(* *.morir()){
			System.out.println("El cazafantasmas ha muerto");
		
	}
}
