package application.controller;

import application.model.Genero;
import application.repository.GeneroRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/generos")
public class GeneroController {

    private final GeneroRepository generoRepository;

    @Autowired
    public GeneroController(GeneroRepository generoRepository) {
        this.generoRepository = generoRepository;
    }

    @RequestMapping(method = RequestMethod.GET)
    public String listar(Model model) {
        model.addAttribute("generos", generoRepository.findAll());
        return "generos/listar";
    }

    @RequestMapping(value = "/novo", method = RequestMethod.GET)
    public String novo(Model model) {
        model.addAttribute("genero", new Genero());
        return "generos/form";
    }

    @RequestMapping(method = RequestMethod.POST)
    public String salvar(@ModelAttribute Genero genero) {
        generoRepository.save(genero);
        return "redirect:/generos";
    }

    @RequestMapping(value = "/editar/{id}", method = RequestMethod.GET)
    public String editar(@PathVariable Long id, Model model) {
        Genero genero = generoRepository.findById(id).orElse(new Genero());
        model.addAttribute("genero", genero);
        return "generos/form";
    }

    @RequestMapping(value = "/deletar/{id}", method = RequestMethod.GET)
    public String deletar(@PathVariable Long id) {
        if (generoRepository.existsById(id)) {
            generoRepository.deleteById(id);
        }
        return "redirect:/generos";
    }
}
