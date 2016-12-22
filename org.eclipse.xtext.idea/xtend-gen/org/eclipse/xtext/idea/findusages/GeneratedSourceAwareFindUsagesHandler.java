/**
 * Copyright (c) 2015 itemis AG (http://www.itemis.eu) and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 */
package org.eclipse.xtext.idea.findusages;

import com.google.common.collect.Iterables;
import com.intellij.find.findUsages.AbstractFindUsagesDialog;
import com.intellij.find.findUsages.FindUsagesHandler;
import com.intellij.find.findUsages.FindUsagesOptions;
import com.intellij.openapi.actionSystem.DataContext;
import com.intellij.openapi.diagnostic.Logger;
import com.intellij.psi.PsiElement;
import com.intellij.psi.PsiReference;
import com.intellij.psi.search.GlobalSearchScope;
import com.intellij.psi.search.SearchScope;
import com.intellij.usageView.UsageInfo;
import com.intellij.util.Processor;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import org.eclipse.xtext.xbase.lib.CollectionLiterals;
import org.eclipse.xtext.xbase.lib.Conversions;
import org.eclipse.xtext.xbase.lib.Functions.Function1;
import org.eclipse.xtext.xbase.lib.IterableExtensions;

/**
 * @author Sebastian Zarnekow - Initial contribution and API
 * @author Anton Kosyakov - Refactoring and testing
 */
@SuppressWarnings("all")
public class GeneratedSourceAwareFindUsagesHandler extends FindUsagesHandler {
  private final static Logger LOG = Logger.getInstance("#org.eclipse.xtext.idea.findusages.GeneratedSourceAwareFindUsagesHandler");
  
  private final FindUsagesHandler primaryHandler;
  
  private final Map<PsiElement, FindUsagesHandler> secondaryHandlers;
  
  private Collection<PsiElement> primaryElements = CollectionLiterals.<PsiElement>newArrayList();
  
  private Collection<PsiElement> secondaryElements = CollectionLiterals.<PsiElement>newArrayList();
  
  public GeneratedSourceAwareFindUsagesHandler(final FindUsagesHandler primaryHandler, final Iterable<FindUsagesHandler> secondaryHandlers) {
    super(primaryHandler.getPsiElement());
    this.primaryHandler = primaryHandler;
    boolean _isEmpty = IterableExtensions.isEmpty(secondaryHandlers);
    boolean _not = (!_isEmpty);
    GeneratedSourceAwareFindUsagesHandler.LOG.assertTrue(_not);
    this.secondaryHandlers = IterableExtensions.<PsiElement, FindUsagesHandler>toMap(secondaryHandlers, ((Function1<FindUsagesHandler, PsiElement>) (FindUsagesHandler it) -> {
      return it.getPsiElement();
    }));
  }
  
  @Override
  public PsiElement[] getPrimaryElements() {
    Collection<PsiElement> _xblockexpression = null;
    {
      this.primaryElements = IterableExtensions.<PsiElement>toList(((Iterable<PsiElement>)Conversions.doWrapArray(this.primaryHandler.getPrimaryElements())));
      _xblockexpression = this.primaryElements;
    }
    return ((PsiElement[])Conversions.unwrapArray(_xblockexpression, PsiElement.class));
  }
  
  @Override
  public PsiElement[] getSecondaryElements() {
    Iterable<PsiElement> _xblockexpression = null;
    {
      this.secondaryElements = IterableExtensions.<PsiElement>toList(((Iterable<PsiElement>)Conversions.doWrapArray(this.primaryHandler.getSecondaryElements())));
      Set<PsiElement> _keySet = this.secondaryHandlers.keySet();
      _xblockexpression = Iterables.<PsiElement>concat(this.secondaryElements, _keySet);
    }
    return ((PsiElement[])Conversions.unwrapArray(_xblockexpression, PsiElement.class));
  }
  
  @Override
  public AbstractFindUsagesDialog getFindUsagesDialog(final boolean isSingleFile, final boolean toShowInNewTab, final boolean mustOpenInNewTab) {
    return this.primaryHandler.getFindUsagesDialog(isSingleFile, toShowInNewTab, mustOpenInNewTab);
  }
  
  @Override
  public FindUsagesOptions getFindUsagesOptions(final DataContext dataContext) {
    return this.primaryHandler.getFindUsagesOptions(dataContext);
  }
  
  @Override
  public boolean processElementUsages(final PsiElement element, final Processor<UsageInfo> processor, final FindUsagesOptions options) {
    FindUsagesHandler _findUsagesHandler = this.getFindUsagesHandler(element);
    boolean _processElementUsages = false;
    if (_findUsagesHandler!=null) {
      _processElementUsages=_findUsagesHandler.processElementUsages(element, processor, options);
    }
    return _processElementUsages;
  }
  
  @Override
  public boolean processUsagesInText(final PsiElement element, final Processor<UsageInfo> processor, final GlobalSearchScope searchScope) {
    FindUsagesHandler _findUsagesHandler = this.getFindUsagesHandler(element);
    boolean _processUsagesInText = false;
    if (_findUsagesHandler!=null) {
      _processUsagesInText=_findUsagesHandler.processUsagesInText(element, processor, searchScope);
    }
    return _processUsagesInText;
  }
  
  protected FindUsagesHandler getFindUsagesHandler(final PsiElement element) {
    if ((this.primaryElements.contains(element) || this.secondaryElements.contains(element))) {
      return this.primaryHandler;
    }
    return this.secondaryHandlers.get(element);
  }
  
  @Override
  public Collection<PsiReference> findReferencesToHighlight(final PsiElement target, final SearchScope searchScope) {
    throw new UnsupportedOperationException("GeneratedSourceAwareFindUsagesHandler should not be used to find references to highlight.");
  }
}
