package it.prova.myebay.service;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import it.prova.myebay.model.StatoUtente;
import it.prova.myebay.model.Utente;
import it.prova.myebay.repository.utente.UtenteRepository;

@PropertySource("messages_it.properties")
@Service
public class UtenteServiceImpl implements UtenteService {

	@Autowired
	private UtenteRepository repository;

	@Autowired
	private PasswordEncoder passwordEncoder;

	@Value("${utente.password.reset.value}")
	private String resetPassword;

	@Override
	@Transactional(readOnly = true)
	public List<Utente> listAll() {
		return (List<Utente>) repository.findAll();
	}

	@Override
	@Transactional(readOnly = true)
	public Utente caricaSingoloElemento(Long id) {
		return repository.findById(id).orElse(null);
	}

	@Override
	@Transactional
	public void aggiorna(Utente utenteInstance) {
		// deve aggiornare solo nome, cognome, username, ruoli
		Utente utenteReloaded = repository.findById(utenteInstance.getId()).orElse(null);
		if (utenteReloaded == null)
			throw new RuntimeException("Elemento non trovato");
		utenteReloaded.setNome(utenteInstance.getNome());
		utenteReloaded.setCognome(utenteInstance.getCognome());
		utenteReloaded.setUsername(utenteInstance.getUsername());
		utenteReloaded.setRuoli(utenteInstance.getRuoli());
		repository.save(utenteReloaded);

	}

	@Override
	@Transactional
	public void inserisciNuovo(Utente utenteInstance) {
		utenteInstance.setStato(StatoUtente.CREATO);
		utenteInstance.setCreditoResiduo(5000);
		utenteInstance.setPassword(passwordEncoder.encode(utenteInstance.getPassword()));
		utenteInstance.setDateCreated(LocalDate.now());
		repository.save(utenteInstance);
	}

	@Override
	@Transactional
	public void rimuovi(Long idToDelete) {
		// TODO Auto-generated method stub

	}

	@Override
	@Transactional(readOnly = true)
	public Utente caricaSingoloUtenteConRuoli(Long id) {
		return repository.findByIdConRuoli(id).orElse(null);
	}

	@Override
	@Transactional(readOnly = true)
	public List<Utente> findByExample(Utente example) {
		return repository.findByExample(example);
	}

}
