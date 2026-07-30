import canonicalLaneMathlib.AdmissibleClass

/-!
# Hodgkin-Huxley Neuronal Membrane Package
-/

namespace HautevilleHouse
namespace NeuroscienceLongTermDepressionFoundationCanonicalLaneLean

structure HodgkinHuxleyNeuronalMembranePackage where
  sodiumChannelDynamics : Prop
  potassiumChannelDynamics : Prop
  leakageCurrentDynamics : Prop
  membranePotentialEquation : Prop
  gatingVariableEquations : Prop
  actionPotentialGeneration : Prop

structure HodgkinHuxleyNeuronalMembraneEvidence (P : HodgkinHuxleyNeuronalMembranePackage) where
  sodiumChannelDynamicsClosed : P.sodiumChannelDynamics
  potassiumChannelDynamicsClosed : P.potassiumChannelDynamics
  leakageCurrentDynamicsClosed : P.leakageCurrentDynamics
  membranePotentialEquationClosed : P.membranePotentialEquation
  gatingVariableEquationsClosed : P.gatingVariableEquations
  actionPotentialGenerationClosed : P.actionPotentialGeneration

def HodgkinHuxleyNeuronalMembraneClosed (P : HodgkinHuxleyNeuronalMembranePackage) : Prop :=
  P.sodiumChannelDynamics ∧ P.potassiumChannelDynamics ∧ P.leakageCurrentDynamics ∧
  P.membranePotentialEquation ∧ P.gatingVariableEquations ∧ P.actionPotentialGeneration

theorem hodgkin_huxley_neuronal_membrane_closed_from_evidence
    (P : HodgkinHuxleyNeuronalMembranePackage)
    (E : HodgkinHuxleyNeuronalMembraneEvidence P) :
    HodgkinHuxleyNeuronalMembraneClosed P := by
  exact And.intro E.sodiumChannelDynamicsClosed
    (And.intro E.potassiumChannelDynamicsClosed
      (And.intro E.leakageCurrentDynamicsClosed
        (And.intro E.membranePotentialEquationClosed
          (And.intro E.gatingVariableEquationsClosed E.actionPotentialGenerationClosed))))

end NeuroscienceLongTermDepressionFoundationCanonicalLaneLean
end HautevilleHouse