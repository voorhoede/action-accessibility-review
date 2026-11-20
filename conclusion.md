# Conclusion and closing thoughts

The website has a solid base when it comes to accessibility. Most issues are concentrated in a small number of shared components and patterns. A couple of issues will be difficult to manage since they rely on company colours. Changing them will be a challenge.

Although the number of issues and affected components is relatively small, there are some areas with serious issues that need to be addressed.

- **State change announcements**: Submitting a form or placing an item in the shopping cart does not get announced to screenreader users. While properly visible, these flows can feel very broken for screenreader users. Most of the issues with an impact of **Blocker** and **Critical** fall in this category.
- **Errors in forms**: Errors are being generated when forms are not filled in properly. However because there is no programmatic connection between the errors and the form fields, these errors get lost.
- **Focus management**: For keyboard users focus management is the area that needs to be improved. While not in many places, when it goes wrong, it is hard to recover from. 

The component with the potential to make the site better usable in general is the product card. It is reused across various pages and fixing its issues will gain a lot of usability improvements.

