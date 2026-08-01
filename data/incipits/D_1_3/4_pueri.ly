\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key a \minor \time 4/4 \tempoMarkup "[no tempo]"
    R1*2
    r8 c''16(\pocoP h) c( h) a( gis) a8 a16( g) a( g) f( e)
    f8 g16( f) g( f) e( d) e8 c, r4
    R1
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key a \minor \time 4/4 \tempoMarkup "[no tempo]"
    R1*2
    r8 e'16(\pocoP d) e( d) c( h) a2~
    a4 g!2 r4
    R1
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key a \minor \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    R1
    r2 r4 r8 h'^\solo
    c c c8. d16 e4 e8 cis
    a a d4~ d8 c16[ d] e8 d16[ c]
    h8 c16 d h8. h16 c4 r
  }
}

SopranoLyrics = \lyricmode {
  Sit
  no -- men Do -- mi -- ni be -- ne --
  di -- ctum, ex __ hoc nunc et
  us -- que in sae -- cu -- lum,
}

Alto = {
  \relative c' {
    \clef alto
    \key a \minor \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    R1
    r2 r4 r8 e^\solo
    e e e8. e16 e4 e8 a16[ g]
    f8 d d g e4. a8
    d, e16 f d8. d16 e4 r
  }
}

AltoLyrics = \lyricmode {
  Sit
  no -- men Do -- mi -- ni be -- ne --
  di -- ctum, ex hoc nunc et
  us -- que in sae -- cu -- lum,
}

Tenore = {
  \relative c' {
    \clef tenor
    \key a \minor \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    r8 e^\solo c a d c16 d h8. h16
    c8 g c8. c16 h8 a16[ h] gis8. gis16
    a4 r r2
    R1
    r2 r8 g g g
  }
}

TenoreLyrics = \lyricmode {
  Lau -- da -- te pu -- e -- ri Do -- mi --
  num, lau -- da -- te no -- men Do -- mi --
  ni,

  a so -- lis
}

Basso = {
  \relative c {
    \clef bass
    \key a \minor \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    r4 r8 a'^\solo f d g f16 g
    e8. d16 c8 c d c16 d e4
    a, r r2
    R1*2
  }
}

BassoLyrics = \lyricmode {
  Lau -- da -- te pu -- e -- ri
  Do -- mi -- num, lau -- da -- te, lau -- da --
  te,
}

Organo = {
  \relative c {
    \clef bass
    \key a \minor \time 4/4 \tempoMarkup "[no tempo]"
    a4-\solo r8 a' f d g f
    e8. d16 c4 d8 c16 d e8 e,
    a4. h8 c4 cis
    d h c4. f8
    g4 g, c r
  }
}

BassFigures = \figuremode {
  r2 <6>8 <7>4.
  <6>2 q8 q <4> <_+>
  r4. <6\\>8 <6>4 <\t>
  r <6> <9>8 <8>4.
  <5 3>8 <6 4> <5 \t> <\t 3> r2
}

\score {
  <<
    \new StaffGroup <<
      \new GrandStaff <<
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
        \set Staff.instrumentName = \markup \center-column { "S" "cnto" }
        \new Voice = "Soprano" { \dynamicUp \Soprano }
      }
      \new Lyrics \lyricsto Soprano \SopranoLyrics

      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "A" "trb 1" }
        \new Voice = "Alto" { \dynamicUp \Alto }
      }
      \new Lyrics \lyricsto Alto \AltoLyrics

      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "T" "trb 2" }
        \new Voice = "Tenore" { \dynamicUp \Tenore }
      }
      \new Lyrics \lyricsto Tenore \TenoreLyrics

      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "B" "fag" }
        \new Voice = "Basso" { \dynamicUp \Basso }
      }
      \new Lyrics \lyricsto Basso \BassoLyrics
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
