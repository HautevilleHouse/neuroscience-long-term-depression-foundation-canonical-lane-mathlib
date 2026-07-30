import canonicalLaneMathlib.AdmissibleClass

/-!
# Hebbian Synaptic Plasticity Package
-/

namespace HautevilleHouse
namespace NeuroscienceLongTermDepressionFoundationCanonicalLaneLean

structure HebbianSynapticPlasticityPackage where
  spikeTimingRule : Prop
  stDPDynamics : Prop
  calciumSignalingDependent : Prop
  longTermPotentiationMechanism : Prop
  longTermDepressionMechanism : Prop
  homeostasisModulation : Prop

structure HebbianSynapticPlasticityEvidence (P : HebbianSynapticPlasticityPackage) where
  spikeTimingRuleClosed : P.spikeTimingRule
  stDPDynamicsClosed : P.stDPDynamics
  calciumSignalingDependentClosed : P.calciumSignalingDependent
  longTermPotentiationMechanismClosed : P.longTermPotentiationMechanism
  longTermDepressionMechanismClosed : P.longTermDepressionMechanism
  homeostasisModulationClosed : P.homeostasisModulation

def HebbianSynapticPlasticityClosed (P : HebbianSynapticPlasticityPackage) : Prop :=
  P.spikeTimingRule ∧ P.stDPDynamics ∧ P.calciumSignalingDependent ∧
  P.longTermPotentiationMechanism ∧ P.longTermDepressionMechanism ∧ P.homeostasisModulation

theorem hebbian_synaptic_plasticity_closed_from_evidence
    (P : HebbianSynapticPlasticityPackage)
    (E : HebbianSynapticPlasticityEvidence P) :
    HebbianSynapticPlasticityClosed P := by
  exact And.intro E.spikeTimingRuleClosed
    (And.intro E.stDPDynamicsClosed
      (And.intro E.calciumSignalingDependentClosed
        (And.intro E.longTermPotentiationMechanismClosed
          (And.intro E.longTermDepressionMechanismClosed E.homeostasisModulationClosed))))

end NeuroscienceLongTermDepressionFoundationCanonicalLaneLean
end HautevilleHouse