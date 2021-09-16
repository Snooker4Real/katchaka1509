package fr.humanbooster.fx.katchaka.service;

import java.util.List;

import fr.humanbooster.fx.katchaka.business.Interet;

public interface InteretService {

	Interet ajouterInteret(String nom);
	
	List<Interet> recupererInterets();

	Interet recupererInteret(String string);
	
}
