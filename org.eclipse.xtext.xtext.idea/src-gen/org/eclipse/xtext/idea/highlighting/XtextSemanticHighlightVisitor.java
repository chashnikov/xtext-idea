/*
 * generated by Xtext 2.11
 */
package org.eclipse.xtext.idea.highlighting;

import org.eclipse.xtext.idea.lang.XtextLanguage;

public class XtextSemanticHighlightVisitor extends SemanticHighlightVisitor {
	public XtextSemanticHighlightVisitor() {
		XtextLanguage.INSTANCE.injectMembers(this);
	}
}
