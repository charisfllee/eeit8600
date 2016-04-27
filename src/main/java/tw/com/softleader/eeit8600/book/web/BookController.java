package tw.com.softleader.eeit8600.book.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import tw.com.softleader.eeit8600.book.service.BookService;

@Controller
@RequestMapping("/books")
public class BookController {
	
	@Autowired
	private BookService bookService;

	// http://**.**.**/books/list
	@RequestMapping("/list")
	public String listPage(Model model) {
		// prefix + string + suffix;
		// "/WEB-INF/jsp/book/bookList.jsp
		
		model.addAttribute("books", bookService.getAll() );
		
		return "/book/bookList"; 
	}
	
}
