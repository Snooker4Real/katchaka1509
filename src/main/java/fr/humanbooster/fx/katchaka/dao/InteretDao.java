package fr.humanbooster.fx.katchaka.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import fr.humanbooster.fx.katchaka.business.Interet;

public interface InteretDao extends JpaRepository<Interet, Long> {

	// Méthode qui va générer une requête HQL
	Interet findByNom(String nom);

}
