/*
 * generated by Xtext 2.11
 */
package org.eclipse.xtext.idea.lang.parser.antlr;

import java.io.InputStream;
import org.eclipse.xtext.parser.antlr.IAntlrTokenFileProvider;

public class XtextAntlrTokenFileProvider implements IAntlrTokenFileProvider {
	@Override
	public InputStream getAntlrTokenFile() {
		ClassLoader classLoader = getClass().getClassLoader();
		return classLoader.getResourceAsStream("org/eclipse/xtext/idea/parser/antlr/internal/PsiInternalXtext.tokens");
	}
}
