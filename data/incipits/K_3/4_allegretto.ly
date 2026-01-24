\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \twofourtime \key g \major \time 2/4 \tempoMarkup "Allegretto"
    d'4-!\f d-!
    d-! d-!
    d8 g d4\trill
    d8 a' d,4\trill
    d8 h' d,4\trill
    fis16( d) g8-! a16( d,) h'8-!
  }
}

% ViolinoII = {
%   \relative c' {
%     \clef treble
%     \twofourtime \key g \major \time 2/4 \tempoMarkup "Allegretto"
%     R2*6
%   }
% }

Continuo = {
  \relative c {
    \clef bass
    \twofourtime \key g \major \time 2/4 \tempoMarkup "Allegretto"
    g'8 h16 a g8 g
    fis fis16 e d8 c
    h g r h16 g
    d'4 r8 fis16 d
    g4 r8 h16 g
    d'8 h fis g
  }
}

\score {
  <<
    \new StaffGroup <<
      % \new GrandStaff \with { \smallGroupDistance } <<
      %   \set GrandStaff.instrumentName = "vl"
        \new Staff {
          \set Staff.instrumentName = "vl 1"
          \ViolinoI
        }
      %   \new Staff {
      %     \set Staff.instrumentName = "2"
      %     \ViolinoII
      %   }
      % >>
      \new Staff {
        \set Staff.instrumentName = "bc"
        \Continuo
      }
    >>
  >>
}
