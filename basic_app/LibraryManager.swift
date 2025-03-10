import Foundation
import FirebaseCore
import FirebaseABTesting
import FirebaseMessaging
import FirebaseRemoteConfig
import FirebaseRemoteConfigInterop
import FirebaseInstallations
import FirebaseCore
import FirebaseCoreInternal
import FirebaseSharedSwift
import GoogleSignIn
import GoogleDataTransport
import GoogleUtilities_Logger
import GTMAppAuth
import AppAuth
import AppCheckCore
import FMDB
import nanopb

class LibraryManager: ObservableObject {
    @Published var lastLibraryUsed: String = "Ninguna" // Estado para mostrar en la UI

    func callLibraryFunction() {
        let libraries = [
            "FirebaseABTesting",
            "FirebaseMessaging",
            "FirebaseRemoteConfig",
            "FirebaseInstallations",
            "GoogleSignIn",
            "GoogleDataTransport",
            "GoogleToolboxForMac",
            "GoogleUtilities_Logger",
            "GTMAppAuth",
            "GTMSessionFetcher",
            "AppAuth",
            "AppCheckCore",
            "FMDB",
            "nanopb",
        ]
        
        if let randomLibrary = libraries.randomElement() {
            DispatchQueue.main.async {
                self.lastLibraryUsed = randomLibrary
            }
            
            switch randomLibrary {
            case "FirebaseABTesting":
                callFirebaseABTesting()
            case "FirebaseMessaging":
                callFirebaseMessaging()
            case "FirebaseRemoteConfig":
                callFirebaseRemoteConfig()
            case "FirebaseInstallations":
                callFirebaseInstallations()
            case "GoogleSignIn":
                callGoogleSignIn()
            case "GoogleDataTransport":
                callGoogleDataTransport()
            case "GoogleToolboxForMac":
                callGoogleToolboxForMac()
            case "GoogleUtilities_Logger":
                callGoogleUtilities()
            case "GTMAppAuth":
                callGTMAppAuth()
            case "GTMSessionFetcher":
                callGTMSessionFetcher()
            case "AppAuth":
                callAppAuth()
            case "AppCheckCore":
                callAppCheckCore()
            case "FMDB":
                callFMDB()
            case "nanopb":
                callNanopb()
            default:
                break
            }
        }
    }

    private func callFirebaseABTesting() {
        print("🔬 FirebaseABTesting está activo.")
    }

    private func callFirebaseMessaging() {
        print("📩 FirebaseMessaging está activo y enviando mensajes.")
    }

    private func callFirebaseRemoteConfig() {
        print("🔧 FirebaseRemoteConfig está activo.")
    }

    private func callFirebaseInstallations() {
        print("🆔 FirebaseInstallations gestionando instancias.")
    }

    private func callGoogleSignIn() {
        print("🔐 GoogleSignIn activo para autenticación.")
    }

    private func callGoogleDataTransport() {
        print("📊 GoogleDataTransport manejando datos.")
    }

    private func callGoogleToolboxForMac() {
        print("🛠 GoogleToolboxForMac en funcionamiento.")
    }

    private func callGoogleUtilities() {
        print("⚙️ GoogleUtilities_Logger funcionando correctamente.")
    }

    private func callGTMAppAuth() {
        print("🔑 GTMAppAuth manejando autenticación segura.")
    }

    private func callGTMSessionFetcher() {
        print("🌐 GTMSessionFetcher manejando sesiones.")
    }

    private func callAppAuth() {
        print("🔑 AppAuth gestionando autenticaciones.")
    }

    private func callAppCheckCore() {
        print("🛡 AppCheckCore protegiendo la aplicación.")
    }

    private func callFMDB() {
        print("📂 FMDB gestionando la base de datos.")
    }

    private func callNanopb() {
        print("📡 nanopb manejando serialización.")
    }
}
