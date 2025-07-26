\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key b \major \time 4/4 \tempoMarkup "Allegretto"
    R1*2
    \sbOn g''4~ \tuplet 3/2 8 { g16 a b c b c } f,4~ \tuplet 3/2 8 { f16 g a b c d }
    es,4~ \tuplet 3/2 8 { es16 f g a b c } \sbOff d,8 b'16( a) a8 g,16( f)
    f8 g'16( f) f8 es,16( d) d f' b, c c4\trill
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key b \major \time 4/4 \tempoMarkup "Allegretto"
    R1
    r2 r4 f'~
    f8 es16 d es4~ es8 d16( c) d4~
    d8 c16( b) c4 b r8 b
    b2~ b8 b4 a8
  }
}

Tenore = {
  \relative c' {
    \clef tenor
    \key b \major \time 4/4 \tempoMarkup "Allegretto" \autoBeamOff
    b4~^\solo b32[ f g a b c d b] c4~\trill c32[ f, a b c d es c]
    d8 c16 b f'8 es16 d c8 f, r4
    R1*3
  }
}

TenoreLyrics = \lyricmode {
  A -- _
  _ ve Re -- gi -- na coe -- lo -- rum,
}

Organo = {
  \relative c {
    \clef bass
    \key b \major \time 4/4 \tempoMarkup "Allegretto"
    b8-\solo c d b a g a f
    b c d es f8. es16 d8 b
    es4. c8 d4. b8
    c4. a8 b g' f es
    d es d c b d es f
  }
}

BassFigures = \figuremode {
  r2 <6>
  r1
  <9>8 <8>4. <9>8 <8>4.
  <9>8 <8>2..
  r1
}

\score {
  <<
    \new StaffGroup <<
      \new GrandStaff \with { \smallGroupDistance } <<
        \set GrandStaff.instrumentName = "vl"
        \new Staff {
          \set Staff.instrumentName = "1"
          \ViolinoI
        }
        \new Staff {
          \set Staff.instrumentName = "2"
          \ViolinoII
        }
      >>
    >>
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = "T"
        \new Voice = "Tenore" { \dynamicUp \Tenore }
      }
      \new Lyrics \lyricsto Tenore \TenoreLyrics
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
