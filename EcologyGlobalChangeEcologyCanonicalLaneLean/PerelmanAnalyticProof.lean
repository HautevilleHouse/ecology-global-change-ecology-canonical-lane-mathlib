import HautevilleHouse.EcologyGlobalChangeEcologyCanonicalLaneLean.EcologyRoute

namespace HautevilleHouse
namespace EcologyGlobalChangeEcologyCanonicalLaneLean

structure CurvatureAnalyticCertificate (G : EcologyCurvaturePackage) where
  riemannTensorSymmetries : Prop
  bianchiIdentities : Prop
  ricciContractionLaw : Prop
  scalarTraceLaw : Prop
  curvatureEvolutionInputs : Prop
  riemannTensorSymmetriesClosed : riemannTensorSymmetries
  bianchiIdentitiesClosed : bianchiIdentities
  ricciContractionLawClosed : ricciContractionLaw
  scalarTraceLawClosed : scalarTraceLaw
  curvatureEvolutionInputsClosed : curvatureEvolutionInputs
  curvatureEvidence : EcologyCurvatureEvidence G

def CurvatureAnalyticCertificateClosed {G : EcologyCurvaturePackage}
    (C : CurvatureAnalyticCertificate G) : Prop :=
  C.riemannTensorSymmetries ∧
  C.bianchiIdentities ∧
  C.ricciContractionLaw ∧
  C.scalarTraceLaw ∧
  C.curvatureEvolutionInputs ∧
  EcologyCurvatureClosed G

theorem curvature_analytic_certificate_closed
    {G : EcologyCurvaturePackage} (C : CurvatureAnalyticCertificate G) :
    CurvatureAnalyticCertificateClosed C := by
  exact And.intro C.riemannTensorSymmetriesClosed
    (And.intro C.bianchiIdentitiesClosed
      (And.intro C.ricciContractionLawClosed
        (And.intro C.scalarTraceLawClosed
          (And.intro C.curvatureEvolutionInputsClosed
            (ecology_curvature_closed_from_evidence G C.curvatureEvidence)))))

end EcologyGlobalChangeEcologyCanonicalLaneLean
end HautevilleHouse