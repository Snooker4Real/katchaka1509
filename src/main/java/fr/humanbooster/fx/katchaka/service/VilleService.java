package fr.humanbooster.fx.katchaka.service;

import java.util.List;

import fr.humanbooster.fx.katchaka.business.Ville;

public interface VilleService {

	Ville ajouterVille(String nom);
	
	List<Ville> recupererVilles();

	Ville recupererVille(String nom);

	List<Ville> recupererVilles(String filtre);
}
