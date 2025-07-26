\version "2.24.2"
\include "header.ly"

Violino = {
  \relative c' {
    \clef treble
    \key es \major \time 4/4 \tempoMarkup "Andante overo larghetto"
    \partial 8 es'8 \appoggiatura es d8. es16 \tuplet 3/2 8 { f16 g as } g8 \appoggiatura g16 f8 b, r es,16 es
    es f f8~ f16 c' b d, es d es8 r \tuplet 3/2 8 { g'16 as b } \gotoBar "9"
    g,(\f es') es( f) f4\trill es8 es, r4
    R1
    r4 r8 es16 es es( f) f8~ f16 c' b d,
    es d es8 r es f16 es es8 r b'
  }
}

Soprano = {
  \relative c' {
    \clef treble
    \key es \major \time 4/4 \tempoMarkup "Andante overo larghetto" \autoBeamOff
    \partial 8 r8 R1*2 \gotoBar "9"
    r2 r4 r8 es'
    d es r \tuplet 3/2 8 { es16[ f g] } f[ d] c[ b] f'[ d] b[ as]
    g8. f16 es4 r2
    r8 b' c b r es d es
  }
}

SopranoLyrics = \lyricmode {
  Ma --
  ri -- a, Ma -- ri -- a gu -- stum
  sen -- ti -- o,
  Ma -- ri -- a, Ma -- ri -- a,
}

Organo = {
  \relative c {
    \clef bass
    \key es \major \time 4/4 \tempoMarkup "Andante overo larghetto"
    \partial 8 es8-\solo f g d es b'8. as16 g8 es
    as8. g16 f8 b r es, g es \gotoBar "9"
    es\f g as b es,4 r8 es
    f g16 f g8 es d4 b8 d
    es4 r8 g as8. g16 f8 b
    es, g as g r g f g
  }
}

BassFigures = \figuremode {
  r8 <6> q2..
  <5>8 <6>2..
  r1
  <6>8 q2..
  r2 <5>8 <6>4.
  r2 r8 <6> q q
}


\score {
  <<
    \new StaffGroup \with { \smallGroupDistance } <<
      \new Staff {
        \set Staff.instrumentName = "vl"
        \Violino
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
  \layout { \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/16) }
}
