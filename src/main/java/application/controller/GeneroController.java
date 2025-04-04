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

    // Lista todos os gêneros
    @GetMapping
    public String listar(Model model) {
        model.addAttribute("generos", generoRepository.findAll());
        return "generos/listar"; // caminho: /WEB-INF/generos/listar.jsp
    }

    // Abre o formulário para novo gênero
    @GetMapping("/novo")
    public String novo(Model model) {
        model.addAttribute("genero", new Genero());
        return "generos/form"; // caminho: /WEB-INF/generos/form.jsp
    }

    // Salva ou atualiza um gênero
    @PostMapping
    public String salvar(@ModelAttribute Genero genero) {
        generoRepository.save(genero);
        return "redirect:/generos";
    }

    // Abre o formulário para editar um gênero existente
    @GetMapping("/editar/{id}")
    public String editar(@PathVariable Long id, Model model) {
        Genero genero = generoRepository.findById(id).orElse(new Genero());
        model.addAttribute("genero", genero);
        return "generos/form";
    }

    // Exclui um gênero por ID, se existir
    @GetMapping("/deletar/{id}")
    public String deletar(@PathVariable Long id) {
        if (generoRepository.existsById(id)) {
            generoRepository.deleteById(id);
        }
        return "redirect:/generos";
    }
    
}
