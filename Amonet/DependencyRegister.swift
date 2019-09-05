//
//  DependencyRegister.swift
//  Amonet
//
//  Created by Serge Mbamba on 2018/11/07.
//  Copyright © 2018 Amonet. All rights reserved.
//

import UIKit
import Core

final class DependencyRegister: NSObject, DependeciesRegistrant {
    
    func registerDependencies() {
        registerCaches()
        registerCoreSingletons()
        registerCoreNonSingletons()
        registerFlowControllers()
        registerHTTPServices()
        registerHTTPServices()
        registerInteractors()
        registerRepositories()
    }
    
    private func registerCoreSingletons() {
        SwiftInjector.registerSingleInstance({ ApplicationModule.shared }, for: ApplicationModule.self)
        SwiftInjector.registerSingleInstance({ SessionManagerImplementation() }, for: SessionManager.self)
        SwiftInjector.registerSingleInstance({ ConnectivityDetectorImplementation.shared }, for: ConnectivityDetector.self)
        SwiftInjector.registerSingleInstance({ Router.shared }, for: Router.self)
        SwiftInjector.registerSingleInstance({ URLSessionProviderImplementation.shared }, for: URLSessionProvider.self)
        SwiftInjector.registerSingleInstance({ LoggerImplementation.shared }, for: Logger.self)
        SwiftInjector.registerSingleInstance({ FileManager.shared }, for: FileManager.self)
        SwiftInjector.registerSingleInstance({ HTTPTaskTracker.shared }, for: HTTPTaskTracker.self)
        SwiftInjector.registerSingleInstance({ ImageCacheImplementation.shared }, for: ImageCache.self)
        SwiftInjector.registerSingleInstance({ HTTPConstantsProvider.shared }, for: HTTPConstantsProvider.self)
        SwiftInjector.registerSingleInstance({ RealmConnector.shared }, for: RealmConnector.self)
        SwiftInjector.registerSingleInstance({ MemoryUsageTracker.shared }, for: MemoryUsageTracker.self)
    }
    
    private func registerCoreNonSingletons() {
        SwiftInjector.register({ HTTPClientImplementation() }, for: HTTPClient.self)
        SwiftInjector.registerSingleInstance({ KeychainAccessorImplementation() }, for: KeychainAccessor.self)
    }
    
    private func registerFlowControllers() {
        SwiftInjector.registerSingleInstance({ HomeFlowControllerImplementation() }, for: HomeFlowController.self)
        SwiftInjector.registerSingleInstance({ ProductFlowControllerImplementation() }, for: ProductFlowController.self)
        SwiftInjector.registerSingleInstance({ AccountFlowControllerImplementation() }, for: AccountFlowController.self)
        SwiftInjector.registerSingleInstance({ LandingFlowControllerImplementation() }, for: LandingFlowController.self)
        SwiftInjector.registerSingleInstance({ CartFlowControllerImplementation() }, for: CartFlowController.self)
        SwiftInjector.registerSingleInstance({ PaymentFlowController() }, for: PaymentFlowController.self)
        SwiftInjector.registerSingleInstance({ HamburgerMenuFlowControllerImplementation() }, for: HamburgerMenuFlowController.self)
    }
    
    private func registerHTTPServices() {
        SwiftInjector.register({ CartServiceImplementation() }, for: CartService.self)
        SwiftInjector.register({ ProductServiceImplementation() }, for: ProductService.self)
        SwiftInjector.register({ AccountServiceImplementation() }, for: AccountService.self)
        SwiftInjector.register({ AdvertsServiceImplementation() }, for: AdvertsService.self)
        SwiftInjector.register({ DealServiceImplementation() }, for: DealService.self)
        SwiftInjector.register({ PaymentServiceImplementation() }, for: PaymentService.self)
        SwiftInjector.registerSingleInstance({ ShippingServiceImplementation() }, for: ShippingService.self)
    }
    
    private func registerCaches() {
        SwiftInjector.registerSingleInstance({ ProductCacheImplementation.shared }, for: ProductCache.self)
        SwiftInjector.registerSingleInstance({ UserCartCacheImplementation.shared }, for: UserCartCache.self)
        SwiftInjector.registerSingleInstance({ DealCacheImplemenation.shared }, for: DealCache.self)
        SwiftInjector.registerSingleInstance({ AdvertCacheImplementation.shared }, for: AdvertCache.self)
        SwiftInjector.registerSingleInstance({ ShippingZoneCacheImplementation.shared }, for: ShippingZoneCache.self)
        SwiftInjector.registerSingleInstance({ StaticContentCacheImplementation.shared }, for: StaticContentCache.self)
        SwiftInjector.registerSingleInstance({ UIFlagsCacheImplentation.shared }, for: UIFlagsCache.self)
    }
    
    private func registerInteractors() {
        SwiftInjector.register({ ProductInteractor() }, for: ProductInteractor.self)
        SwiftInjector.register({ LoginInteractor() }, for: LoginInteractor.self)
        SwiftInjector.register({ CartInteractor() }, for: CartInteractor.self)
        SwiftInjector.register({ SearchProductResultInteractor() }, for: SearchProductResultInteractor.self)
        SwiftInjector.register({ CustomerInteractor() }, for: CustomerInteractor.self)
        SwiftInjector.register({ AdvertsInteractor() }, for: AdvertsInteractor.self)
        SwiftInjector.register({ DealInteractor() }, for: DealInteractor.self)
        SwiftInjector.register({ OrdersInteractor() }, for: OrdersInteractor.self)
        SwiftInjector.register({ BankListInteractor() }, for: BankListInteractor.self)
        SwiftInjector.register({ BankDetailsCaptureInteractor() }, for: BankDetailsCaptureInteractor.self)
        SwiftInjector.register({ AddressInteractor() }, for: AddressInteractor.self)
        SwiftInjector.register({ PaymentInteractor() }, for: PaymentInteractor.self)
        SwiftInjector.register({ ErrorInteractor() }, for: ErrorInteractor.self)
        SwiftInjector.register({ ShippingInteractor() }, for: ShippingInteractor.self)
    }
    
    private func registerRepositories() {
        SwiftInjector.register({ ShippingRepositoryImplementation() }, for: ShippingRepository.self)
    }
}
