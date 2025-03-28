package application.controller;

import application.model.Genero;
import application.repository.GeneroRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/generos")
public class GeneroController {

    private final GeneroRepository generoRepository;

    public GeneroController(GeneroRepository generoRepository) {
        this.generoRepository = generoRepository;
    }

    @GetMapping
    public String listar(Model model) {
        model.addAttribute("generos", generoRepository.findAll());
        return "generos/listar";
    }

    @GetMapping("/novo")
    public String novo(Model model) {
        model.addAttribute("genero", new Genero());
        return "generos/form";
    }

    @PostMapping
    public String salvar(@ModelAttribute Genero genero) {
        generoRepository.save(genero);
        return "redirect:/generos";
    }

    @GetMapping("/editar/{id}")
    public String editar(@PathVariable Long id, Model model) {
        model.addAttribute("genero", generoRepository.findById(id).orElse(new Genero()));
        return "generos/form";
    }

    @GetMapping("/deletar/{id}")
    public String deletar(@PathVariable Long id) {
        generoRepository.deleteById(id);
        return "redirect:/generos";
    }
}
