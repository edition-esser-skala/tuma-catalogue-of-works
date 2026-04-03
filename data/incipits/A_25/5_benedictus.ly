\version "2.24.2"
\include "header.ly"

ViolinoIeII = {
  \relative c' {
    \clef treble
    \key e \minor \time 4/4 \tempoMarkup "Andante"
    h''16 a g fis e e e e h' a g fis e e e e
    c' h a g fis e dis cis \hA dis h h h \hA dis h h h \gotoBar "10"
    e, e' c a \tuplet 3/2 8 { g fis e } fis8 e4 r %10
    r2 h''16\p a g fis e e e e
    h' a g fis e e e e c' h a g fis e dis cis
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key e \minor \time 4/4 \autoBeamOff \tempoMarkup "Andante"
    R1*2 \gotoBar "10"
    r2 h'4.^\solo e8
    dis4 e8 fis g16[ fis] e8 r e
    e1
  }
}

SopranoLyrics = \lyricmode {
  Be -- ne --
  di -- ctus, qui ve -- nit, qui
  "ve -"
}

Organo = {
  \relative c {
    \clef bass
    \key e \minor \time 4/4 \tempoMarkup "Andante"
    e4-\solo e8 fis g4 c,8 h
    a4 a' h4. a8 \gotoBar "10"
    c,4 h8 h e, e'16 fis g8 e
    h' a g fis e4 e8 fis
    g4 c,8 h a4. a8
  }
}

BassFigures = \figuremode {
  r2. <6>4
  r2 <_+>4. <4\+>8
  r <5 4>8 <\t _+> r2
  <_+>4 <6>2.
  r1
}

\score {
  <<
    \new StaffGroup <<
      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "vl" "1, 2" }
        \ViolinoIeII
      }
    >>
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = "S"
        \new Voice = "Soprano" { \dynamicUp \Soprano }
      }
      \new Lyrics \lyricsto Soprano \SopranoLyrics
    >>
    \new StaffGroup <<
      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "org" "b" }
        \Organo
      }
    >>
    \new FiguredBass { \BassFigures }
  >>
}
