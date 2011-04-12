package com.prefabsoft.config.web;

import com.prefabsoft.config.model.PrefabKeyValue;
import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebScaffold(path = "prefabkeyvalues", formBackingObject = PrefabKeyValue.class)
@RequestMapping("/prefabkeyvalues")
@Controller
public class PrefabKeyValueController {
}
