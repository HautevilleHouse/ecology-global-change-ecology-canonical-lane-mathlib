import HautevilleHouse.EcologyGlobalChangeEcologyCanonicalLaneLean.EcologyAnalyticProof

namespace HautevilleHouse
namespace EcologyGlobalChangeEcologyCanonicalLaneLean

structure CurvatureAnalyticEvidenceTerms {G : EcologyCurvaturePackage}
    (C : CurvatureAnalyticCertificate G) where
  riemannTensorSymmetries : C.riemannTensorSymmetries
  bianchiIdentities : C.bianchiIdentities
  ricciContractionLaw : C.ricciContractionLaw
  scalarTraceLaw : C.scalarTraceLaw
  curvatureEvolutionInputs : C.curvatureEvolutionInputs
  curvatureClosed : EcologyCurvatureClosed G

def CurvatureAnalyticCertificate.evidenceTerms {G : EcologyCurvaturePackage}
    (C : CurvatureAnalyticCertificate G) : CurvatureAnalyticEvidenceTerms C :=
  {
    riemannTensorSymmetries := C.riemannTensorSymmetriesClosed
    bianchiIdentities := C.bianchiIdentitiesClosed
    ricciContractionLaw := C.ricciContractionLawClosed
    scalarTraceLaw := C.scalarTraceLawClosed
    curvatureEvolutionInputs := C.curvatureEvolutionInputsClosed
    curvatureClosed := ecology_curvature_closed_from_evidence G C.curvatureEvidence
  }

end EcologyGlobalChangeEcologyCanonicalLaneLean
end HautevilleHouse