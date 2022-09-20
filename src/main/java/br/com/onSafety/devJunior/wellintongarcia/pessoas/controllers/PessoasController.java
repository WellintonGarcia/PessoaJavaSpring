package br.com.onSafety.devJunior.wellintongarcia.pessoas.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import br.com.onSafety.devJunior.wellintongarcia.pessoas.repositories.PessoaRepository;
import br.com.onSafety.devJunior.wellintongarcia.pessoas.models.Pessoa;
import java.util.Optional;

@Controller
@RequestMapping("/pessoas")
public class PessoasController{
    @Autowired
    private PessoaRepository pessoasRepo;

    @RequestMapping("list")
    public String list (Model model){
        model.addAttribute("pessoas", pessoasRepo.findAll());
        return "list.jsp";
    }

    @RequestMapping("insert")
    public String formInsert() {
        return "insert.jsp";
    }

    @RequestMapping(value = "insert", method = RequestMethod.POST)
    public String saveInsert(
        @RequestParam("nome") String nome,
        @RequestParam("cpf") String cpf,
        @RequestParam("dataNascimento") String dataNascimento,
        @RequestParam("email") String email
        ) {
        Pessoa pessoa = new Pessoa();
        pessoa.setNome(nome);
        pessoa.setCpf(cpf);
        pessoa.setDataNascimento(dataNascimento);
        pessoa.setEmail(email);
        pessoasRepo.save(pessoa);
        return "redirect:/pessoas/list";
    }

    @RequestMapping("update/{id}")
    public String formUpdate(Model model, @PathVariable int id) {
        Optional<Pessoa> pessoa = pessoasRepo.findById(id);
        if (!pessoa.isPresent()) return "redirect:/pessoas/list";
        model.addAttribute("pessoas", pessoa.get());
        return "/pessoas/update.jsp";
    }


    @RequestMapping(value = "update", method = RequestMethod.POST)
    public String saveUpdate(
        @RequestParam("id") int id,
        @RequestParam("nome") String nome,
        @RequestParam("cpf") String cpf,
        @RequestParam("dataNascimento") String dataNascimento,
        @RequestParam("email") String email
        ) {
        Optional<Pessoa> pessoa = pessoasRepo.findById(id);
        if (!pessoa.isPresent()) return "redirect:/pessoas/list";
        pessoa.get().setNome(nome);
        pessoa.get().setCpf(cpf);
        pessoa.get().setDataNascimento(dataNascimento);
        pessoa.get().setEmail(email);
        pessoasRepo.save(pessoa.get());
        return "redirect:/pessoas/list";
    }

    @RequestMapping("delete/{id}")
    public String formDelete(Model model, @PathVariable int id) {
        Optional<Pessoa> pessoa = pessoasRepo.findById(id);
        if (!pessoa.isPresent()) return "redirect:/pessoas/list";
        model.addAttribute("pessoa", pessoa.get());
        return "/pessoas/delete.jsp";
    }

    @RequestMapping(value = "delete", method = RequestMethod.POST)
        public String confirmDelete(@RequestParam("id") int id) {
        pessoasRepo.deleteById(id);
        return "redirect:/pessoas/list";
    }

}