package tw.com.softleader.eeit8600.index;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

	@RequestMapping("/")
	public String indexPage() {
		return "/index";
	}

	@RequestMapping("/beauty")
	public String index2() {
		return "/index_beauty";
	}
}
