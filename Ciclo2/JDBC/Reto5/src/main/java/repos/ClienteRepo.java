/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repos;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


/**
 *
 * @author ErikaEspejo
 */
@Repository
public interface ClienteRepo extends JpaRepository<ClienteRepo,Long>{
    
}
