package com.milestone.datasourcenfc.service;

import com.milestone.datasourcenfc.exceptions.PersonNotFoundException;
import com.milestone.datasourcenfc.model.Person;
import com.milestone.datasourcenfc.repository.PersonRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
@RequiredArgsConstructor
public class PersonService {

    private final PersonRepository personRepository;

    public Person getPersonByNik(String nik) {
        Person person = personRepository.findPersonByNik(nik).
                                orElseThrow(PersonNotFoundException::new);
        return person;
    }


}
