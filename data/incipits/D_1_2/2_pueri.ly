\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key a \minor \time 4/4 \tempoMarkup "[no tempo]"
    R1*2
    r8 a'16( c) c( e) e( a) a4 r
    r2 r8 c,16( e) e( g) g( c)
    c4 r r8 g,,16( h) h( d) d( g)
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key a \minor \time 4/4 \tempoMarkup "[no tempo]"
    R1*2
    r2 r8 d16( f) f( a) a( d)
    g,4 r r8 e16( g) g( c) c( e)
    e4 r r8 g,,16( h) h( d) d( g)
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key a \minor \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    R1*2
    r8 e'^\solo c h a4 a8 d
    h c16[ d] h8. h16 c4 r
    R1
  }
}

SopranoLyrics = \lyricmode {
  Sit be -- ne -- di -- ctum us --
  que in sae -- cu -- lum.
}

Alto = {
  \relative c' {
    \clef alto
    \key a \minor \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    R1
    r2 r8 e^\solo e e
    e8. a16 a8 r f a f e
    d e16 f d8. d16 c4 r
    R1
  }
}

AltoLyrics = \lyricmode {
  Sit no -- men
  Do -- mi -- ni ex hoc nunc et
  us -- que in sae -- cu -- lum.
}

Tenore = {
  \relative c' {
    \clef tenor
    \key a \minor \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    r8 e^\solo a, h c h16 a f'8. f16
    e8 e d c h c16[ d] h8. h16
    a4 r r2
    R1*2
  }
}

TenoreLyrics = \lyricmode {
  Lau -- da -- te pu -- e -- ri Do -- mi --
  num, lau -- da -- te no -- men Do -- mi --
  ni.
}

Basso = {
  \relative c {
    \clef bass
    \key a \minor \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    R1*3
    r8 g'^\solo g g c4 c
    c8 a16[ g] fis[ e] d[ c] h[ a] g8 r4
  }
}

BassoLyrics = \lyricmode {
  A so -- lis or -- tu %4
  us -- que ad oc -- ca -- sum,
}

Organo = {
  \relative c {
    \clef bass
    \key a \minor \time 4/4 \tempoMarkup "[no tempo]"
    a'4-\solo r8 gis a4. h8
    c c, d4 e8 a, e' e,
    a4 c d f
    g8 c, g' g, c4 r
    a r g r
  }
}

BassFigures = \figuremode {
  r2. <6>4
  r q8 <5> r2
  r4 <6>2.
  r1
  r
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
        \set Staff.instrumentName = "S"
        \new Voice = "Soprano" { \dynamicUp \Soprano }
      }
      \new Lyrics \lyricsto Soprano \SopranoLyrics

      \new Staff {
        \set Staff.instrumentName = "A"
        \new Voice = "Alto" { \dynamicUp \Alto }
      }
      \new Lyrics \lyricsto Alto \AltoLyrics

      \new Staff {
        \set Staff.instrumentName = "T"
        \new Voice = "Tenore" { \dynamicUp \Tenore }
      }
      \new Lyrics \lyricsto Tenore \TenoreLyrics

      \new Staff {
        \set Staff.instrumentName = "B"
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
