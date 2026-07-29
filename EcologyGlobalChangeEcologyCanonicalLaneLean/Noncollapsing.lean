import HautevilleHouse.EcologyGlobalChangeEcologyCanonicalLaneLean.EcologyEntropy

namespace HautevilleHouse
namespace EcologyGlobalChangeEcologyCanonicalLaneLean

structure NoncollapsingPackage {G : EcologyCurvaturePackage}
    {F : ClimateModelPDEPackage G} (Epkg : EcologyEntropyPackage F) where
  scaleInvariantVolumeBound : Prop
  curvatureScaleControl : Prop
  blowupLimitNoncollapsed : Prop

structure NoncollapsingEvidence {G : EcologyCurvaturePackage}
    {F : ClimateModelPDEPackage G} {Epkg : EcologyEntropyPackage F} (N : NoncollapsingPackage Epkg) where
  scaleInvariantVolumeBoundClosed : N.scaleInvariantVolumeBound
  curvatureScaleControlClosed : N.curvatureScaleControl
  blowupLimitNoncollapsedClosed : N.blowupLimitNoncollapsed

def NoncollapsingClosed {G : EcologyCurvaturePackage}
    {F : ClimateModelPDEPackage G} {Epkg : EcologyEntropyPackage F} (N : NoncollapsingPackage Epkg) : Prop :=
  N.scaleInvariantVolumeBound ∧ N.curvatureScaleControl ∧ N.blowupLimitNoncollapsed

theorem noncollapsing_closed_from_evidence
    {G : EcologyCurvaturePackage} {F : ClimateModelPDEPackage G}
    {Epkg : EcologyEntropyPackage F}
    (N : NoncollapsingPackage Epkg) (E : NoncollapsingEvidence N) :
    NoncollapsingClosed N := by
  exact And.intro E.scaleInvariantVolumeBoundClosed
    (And.intro E.curvatureScaleControlClosed E.blowupLimitNoncollapsedClosed)

end EcologyGlobalChangeEcologyCanonicalLaneLean
end HautevilleHouse