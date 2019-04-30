package com.example.sweater.repos;

import com.example.sweater.domain.Message;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface MessageRepo extends CrudRepository<Message, Long> {

    List<Message> findByTag(String tag);

    List<Message> findById(int id);

    List<Message> findById(long id);

    List<Message> findByAuthor(String name);


}
