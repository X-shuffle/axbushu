package org.linlinjava.ax.admin.web;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.linlinjava.ax.admin.annotation.RequiresPermissionsDesc;
import org.linlinjava.ax.core.util.ResponseUtil;
import org.linlinjava.ax.core.validator.Order;
import org.linlinjava.ax.core.validator.Sort;
import org.linlinjava.ax.db.domain.AxKeyword;
import org.linlinjava.ax.db.service.AxKeywordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.StringUtils;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.validation.constraints.NotNull;
import java.util.List;

@RestController
@RequestMapping("/admin/keyword")
@Validated
public class AdminKeywordController {
    private final Log logger = LogFactory.getLog(AdminKeywordController.class);

    @Autowired
    private AxKeywordService keywordService;

    @RequiresPermissions("admin:keyword:list")
    @RequiresPermissionsDesc(menu = {"商场管理", "关键词"}, button = "查询")
    @GetMapping("/list")
    public Object list(String keyword, String url,
                       @RequestParam(defaultValue = "1") Integer page,
                       @RequestParam(defaultValue = "10") Integer limit,
                       @Sort @RequestParam(defaultValue = "add_time") String sort,
                       @Order @RequestParam(defaultValue = "desc") String order) {
        List<AxKeyword> keywordList = keywordService.querySelective(keyword, url, page, limit, sort, order);
        return ResponseUtil.okList(keywordList);
    }

    private Object validate(AxKeyword keywords) {
        String keyword = keywords.getKeyword();
        if (StringUtils.isEmpty(keyword)) {
            return ResponseUtil.badArgument();
        }
        return null;
    }

    @RequiresPermissions("admin:keyword:create")
    @RequiresPermissionsDesc(menu = {"商场管理", "关键词"}, button = "添加")
    @PostMapping("/create")
    public Object create(@RequestBody AxKeyword keyword) {
        Object error = validate(keyword);
        if (error != null) {
            return error;
        }
        keywordService.add(keyword);
        return ResponseUtil.ok(keyword);
    }

    @RequiresPermissions("admin:keyword:read")
    @RequiresPermissionsDesc(menu = {"商场管理", "关键词"}, button = "详情")
    @GetMapping("/read")
    public Object read(@NotNull Integer id) {
        AxKeyword keyword = keywordService.findById(id);
        return ResponseUtil.ok(keyword);
    }

    @RequiresPermissions("admin:keyword:update")
    @RequiresPermissionsDesc(menu = {"商场管理", "关键词"}, button = "编辑")
    @PostMapping("/update")
    public Object update(@RequestBody AxKeyword keyword) {
        Object error = validate(keyword);
        if (error != null) {
            return error;
        }
        if (keywordService.updateById(keyword) == 0) {
            return ResponseUtil.updatedDataFailed();
        }
        return ResponseUtil.ok(keyword);
    }

    @RequiresPermissions("admin:keyword:delete")
    @RequiresPermissionsDesc(menu = {"商场管理", "关键词"}, button = "删除")
    @PostMapping("/delete")
    public Object delete(@RequestBody AxKeyword keyword) {
        Integer id = keyword.getId();
        if (id == null) {
            return ResponseUtil.badArgument();
        }
        keywordService.deleteById(id);
        return ResponseUtil.ok();
    }

}
