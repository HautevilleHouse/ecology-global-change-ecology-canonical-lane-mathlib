import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyGlobalChangeEcologyCanonicalLaneLean

structure CarbonBudgetPackage where
  carbonPools : Type u
  fluxes : Type v
  budgetBalance : Prop
  timescale : Prop
  driverAttribution : Prop

structure CarbonBudgetEvidence (C : CarbonBudgetPackage) where
  budgetBalanceClosed : C.budgetBalance
  timescaleClosed : C.timescale
  driverAttributionClosed : C.driverAttribution

def CarbonBudgetClosed (C : CarbonBudgetPackage) : Prop :=
  C.budgetBalance ∧ C.timescale ∧ C.driverAttribution

theorem carbon_budget_closed_from_evidence
    (C : CarbonBudgetPackage) (E : CarbonBudgetEvidence C) :
    CarbonBudgetClosed C := by
  exact And.intro E.budgetBalanceClosed
    (And.intro E.timescaleClosed E.driverAttributionClosed)

end EcologyGlobalChangeEcologyCanonicalLaneLean
end HautevilleHouse