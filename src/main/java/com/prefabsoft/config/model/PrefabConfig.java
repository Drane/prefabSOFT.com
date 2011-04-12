package com.prefabsoft.config.model;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import java.util.Set;
import com.prefabsoft.config.model.PrefabKeyValue;
import java.util.HashSet;
import javax.persistence.ManyToMany;
import javax.persistence.CascadeType;

@RooJavaBean
@RooToString
@RooEntity
public class PrefabConfig {

    @ManyToMany(cascade = CascadeType.ALL)
    private Set<PrefabKeyValue> keyValuePairs = new HashSet<PrefabKeyValue>();
}
