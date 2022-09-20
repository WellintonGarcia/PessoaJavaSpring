package br.com.onSafety.devJunior.wellintongarcia.pessoas.repositories;

import br.com.onSafety.devJunior.wellintongarcia.pessoas.models.Pessoa;
import org.springframework.data.repository.CrudRepository;

public interface PessoaRepository extends CrudRepository<Pessoa, Integer>{}
