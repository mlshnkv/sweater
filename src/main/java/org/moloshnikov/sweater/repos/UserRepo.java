package org.moloshnikov.sweater.repos;

import org.moloshnikov.sweater.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepo extends JpaRepository<User, Long> {
    User findByName(String name);
}