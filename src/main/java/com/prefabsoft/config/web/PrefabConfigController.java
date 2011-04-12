package com.prefabsoft.config.web;

import com.prefabsoft.config.model.PrefabConfig;
import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebScaffold(path = "prefabconfigs", formBackingObject = PrefabConfig.class)
@RequestMapping("/prefabconfigs")
@Controller
public class PrefabConfigController {
}
