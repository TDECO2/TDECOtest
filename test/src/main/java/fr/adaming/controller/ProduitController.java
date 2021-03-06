package fr.adaming.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import fr.adaming.model.Admin;
import fr.adaming.model.Produit;
import fr.adaming.service.IProduitService;

@Controller
@RequestMapping("/produit")
public class ProduitController {
	
	
	@Autowired
	private IProduitService produitService;

	public void setProduitService(IProduitService produitService) {
		this.produitService = produitService;
	}

/**
 * d�finition et mapping accueil
 */
	@RequestMapping(value = "/accueil", method = RequestMethod.GET)
	public String accueil(ModelMap model) {
		model.addAttribute("nomApp", "APPLICATION DE GESTION DES PRODUITS");

		model.addAttribute("salutation", "Avec SPRING MVC");

		return "accueil";
	}
	
	/**
	 * Afficher liste produit
	 */
	@RequestMapping(value = "/listeProduit", method = RequestMethod.GET)
	public String afficherProduit(ModelMap model) {
		List<Produit> listeProduit = produitService.getAllProduit();

		model.addAttribute("produitListe", listeProduit);

		return "afficherListeProduit";
	}
	
	
	/**
	 * update d'produit
	 */
	
	
	

	/**
	 * Ajout d'produit
	 */
	
	// Methode pour afficher le formulaire d'ajout et lui attribuer le modele
	@RequestMapping(value = "/affichFormAjout", method = RequestMethod.GET)
	public ModelAndView affichFormAjout() {
		return new ModelAndView("ajouterProduit", "produitForm", new Produit());
	}
	
	// Methode pour soummettre le formulaire d'ajout et lui attribuer le modele
	@RequestMapping(value = "/soumettreFormAjout", method = RequestMethod.POST)
	public String soumettreFormAjout(Model model, @Valid @ModelAttribute("produitForm") Produit produit,BindingResult resultatValidation ) {
		if(resultatValidation.hasErrors()){
			return "ajouterProduit";
		}
		if(produit.getIdProduit()==0){
		// appel de la methode ajouter du service
		produitService.addProduit(produit);
		}
		
//		else{
//			/**
//			 * appel de la m�thode update du service
//			 */
//			produitService.updateProduit(produit);
//		}
		// rafraichissement de la liste
		List<Produit> listeProduit = produitService.getAllProduit();

		model.addAttribute("produitListe", listeProduit);

		return "afficherListeProduit";
	}
	
	
	/**
	 * suppression produit
	 */
	
	@RequestMapping(value = "/{id}/delete", method = RequestMethod.GET)
	public String deleteProduit(Model model, @PathVariable("id") long id) {


		Produit produit = produitService.getProduitById(id);

		produitService.deleteProduit(produit);

		/**
		 * rafraichissement de la liste et affichage d'un message d'alerte
		 */
		List<Produit> listeProduit = produitService.getAllProduit();

		model.addAttribute("produitListe", listeProduit);
		model.addAttribute("css", "success");
		model.addAttribute("msg", "Produit is deleted!");


		return "afficherListeProduit";

	}
	
	
	
}
