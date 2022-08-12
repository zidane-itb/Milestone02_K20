package com.milestone.datasourcenfc.repository;

import com.milestone.datasourcenfc.model.Person;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface PersonRepository extends CrudRepository<Person, String> {

    Optional<Person> findPersonByNik(String nik);

}
