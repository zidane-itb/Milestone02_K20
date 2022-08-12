package com.milestone.datasourcenfc.controller;

import com.milestone.datasourcenfc.dto.PersonGetDto;
import com.milestone.datasourcenfc.model.Person;
import com.milestone.datasourcenfc.repository.PersonRepository;
import com.milestone.datasourcenfc.service.PersonService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
public class DataRestController {

    private final PersonService personService;

    @GetMapping("/person")
    public ResponseEntity<Person> getPersonData(@RequestBody PersonGetDto dto) {
        Person person = personService.getPersonByNik(dto.getNik());

        return ResponseEntity.status(HttpStatus.OK)
                .body(person);
    }


}
