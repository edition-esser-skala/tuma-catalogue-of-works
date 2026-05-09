\version "2.24.2"
\include "header.ly"

ViolinoIeII = {
  \relative c' {
    \clef treble
    \key c \dorian \time 4/4 \tempoMarkup "Andante"
    c'8~ c32 c( b as) g8 g32( f es d) es16 es d c f8~ f32 es( d c)
    h16 h a g d'8 c32( h a g) es'8 f32( es d c) f8 es32( d c h) \gotoBar "5"
    c4 r r2
    R1
    r2 es'8~ es32 es( d c) b8 b32( as g f)
  }
}

BassoI = {
  \relative c {
    \clef bass
    \key c \dorian \time 4/4 \tempoMarkup "Andante" \autoBeamOff
    R1*2 \gotoBar "5"
    c'4^\solo g es16[ d] c8 r4
    r8 g'4 c8 c b! g, b'
    as2 g4 r
  }
}

BassoILyrics = \lyricmode {
  Al -- ma, al -- ma,
  al -- ma Re -- dem -- pto -- ris,
  Ma -- ter,
}

BassoII = {
  \relative c {
    \clef bass
    \key c \dorian \time 4/4 \tempoMarkup "Andante" \autoBeamOff
    R1*2 \gotoBar "5"
    r2 c'4^\solo g
    es16[ d] c8 r4 r8 d4 g8
    g f f, f' f16[ d] es8 r4
  }
}

BassoIILyrics = \lyricmode {
  Al -- ma,
  al -- ma, al -- ma
  Re -- dem -- pto -- ris Ma -- ter,
}

Organo = {
  \relative c {
    \clef bass
    \key c \dorian \time 4/4 \tempoMarkup "Andante"
    c8 c' h h, c4 d8 f
    g4 h,8 r c r d r \gotoBar "5"
    c c' h h, c c h g
    c c es c g' g, r g
    c d16 c d4 es8 es' d d,
  }
}

BassFigures = \figuremode {
  r1
  <_!>2. <6!>4
  r1
  r2 <4>8 <_->4.
  <6- 5>1
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
        \set Staff.instrumentName = "B 1"
        \new Voice = "BassoI" { \dynamicUp \BassoI }
      }
      \new Lyrics \lyricsto BassoI \BassoILyrics

      \new Staff {
        \set Staff.instrumentName = "B 2"
        \new Voice = "BassoII" { \dynamicUp \BassoII }
      }
      \new Lyrics \lyricsto BassoII \BassoIILyrics
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
