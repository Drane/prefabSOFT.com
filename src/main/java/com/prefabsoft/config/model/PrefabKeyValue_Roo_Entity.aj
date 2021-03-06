// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.prefabsoft.config.model;

import com.prefabsoft.config.model.PrefabKeyValue;
import java.lang.Integer;
import java.lang.Long;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityManager;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PersistenceContext;
import javax.persistence.Version;
import org.springframework.transaction.annotation.Transactional;

privileged aspect PrefabKeyValue_Roo_Entity {
    
    declare @type: PrefabKeyValue: @Entity;
    
    @PersistenceContext
    transient EntityManager PrefabKeyValue.entityManager;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long PrefabKeyValue.id;
    
    @Version
    @Column(name = "version")
    private Integer PrefabKeyValue.version;
    
    public Long PrefabKeyValue.getId() {
        return this.id;
    }
    
    public void PrefabKeyValue.setId(Long id) {
        this.id = id;
    }
    
    public Integer PrefabKeyValue.getVersion() {
        return this.version;
    }
    
    public void PrefabKeyValue.setVersion(Integer version) {
        this.version = version;
    }
    
    @Transactional
    public void PrefabKeyValue.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void PrefabKeyValue.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            PrefabKeyValue attached = PrefabKeyValue.findPrefabKeyValue(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void PrefabKeyValue.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void PrefabKeyValue.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public PrefabKeyValue PrefabKeyValue.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        PrefabKeyValue merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager PrefabKeyValue.entityManager() {
        EntityManager em = new PrefabKeyValue().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long PrefabKeyValue.countPrefabKeyValues() {
        return entityManager().createQuery("SELECT COUNT(o) FROM PrefabKeyValue o", Long.class).getSingleResult();
    }
    
    public static List<PrefabKeyValue> PrefabKeyValue.findAllPrefabKeyValues() {
        return entityManager().createQuery("SELECT o FROM PrefabKeyValue o", PrefabKeyValue.class).getResultList();
    }
    
    public static PrefabKeyValue PrefabKeyValue.findPrefabKeyValue(Long id) {
        if (id == null) return null;
        return entityManager().find(PrefabKeyValue.class, id);
    }
    
    public static List<PrefabKeyValue> PrefabKeyValue.findPrefabKeyValueEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM PrefabKeyValue o", PrefabKeyValue.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
