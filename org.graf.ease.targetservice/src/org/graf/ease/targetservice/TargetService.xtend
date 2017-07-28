package org.graf.ease.targetservice

import org.eclipse.ease.modules.IScriptModule
import org.eclipse.ease.IScriptEngine
import org.eclipse.ease.modules.IEnvironment
import org.eclipse.pde.core.target.ITargetPlatformService
import org.eclipse.ease.modules.WrapToScript

public class TargetService implements IScriptModule {
	
	ITargetPlatformService targetService
	
	override initialize(IScriptEngine engine, IEnvironment environment) {
		this.targetService = Activator.^default.targetPlatformService
	}
	
	@WrapToScript
	def getService() {
		return targetService
	}
}