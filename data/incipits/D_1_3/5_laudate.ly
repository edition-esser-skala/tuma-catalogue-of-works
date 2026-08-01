\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "[no tempo]"
    R1*2
    r2 r8 c' c c
    a2. gis4
    a8 a cis d16 e f2
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "[no tempo]"
    R1*2
    r2 r8 a' a a
    f4. e8 f4 e~
    e8 e e f16 g a2
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    r8 e'^\solo c16[ d] c[ d] e4. e8
    c4 c~ c8 c h4
    c r r8 c^\tutti c c
    a4 a8 a a4 gis
    a8 a cis d16 e f8. f16 f4
  }
}

SopranoLyrics = \lyricmode {
  Lau -- da -- te Do -- mi --
  num, o -- mnes gen --
  tes, mi -- se -- ri --
  cor -- di -- a e -- _
  ius, et ve -- ri -- tas Do -- mi -- ni
}

Alto = {
  \relative c' {
    \clef alto
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    r8 g'^\solo e16[ f] e f g4. g8
    e4. e8 d d d8. d16
    c4 r r8 a'^\tutti a a
    f4 f8 e f4 e
    e8 e e f16 g a8. a16 a4
  }
}

AltoLyrics = \lyricmode {
  Lau -- da -- te, lau -- da -- te
  e -- um, o -- mnes po -- pu --
  li, mi -- se -- ri --
  cor -- di -- a e -- _
  ius, et ve -- ri -- tas Do -- mi -- ni
}

Tenore = {
  \relative c' {
    \clef tenor
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    R1*2
    r4 e8.^\tutti e16 e4 e8 e
    c4 c8 c h4. h8
    a4 r r8 f'16[ e] f[ e d cis]
  }
}

TenoreLyrics = \lyricmode {
  Quo -- ni -- am con -- fir --
  ma -- ta est su -- per
  nos, ma \hy
}

Basso = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    R1*2
    r4 c'8.^\tutti c16 c8 a~ a16[ g] f([ e)]
    f8[ f16 e] f[ e d c] d8[ e16 d] e[ d c h]
    c8 a r4 r8 d'16([ c)] d([ c) b( a)]
  }
}

BassoLyrics = \lyricmode {
  Quo -- ni -- am con -- fir --
  ma -- _ _ _
  _ ta, ma \hy
}

Organo = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \tempoMarkup "[no tempo]"
    c4-\solo r r8 c'16( h) c( h) a( g)
    a8 a16( g) a( g) f( e) f8 g16( f) g( f) e( d)
    e8 c r4 r8 a'16(-\tutti g) a( g) f( e)
    f8 f16( e) f( e) d( c) d8 e16( d) e( d) c( h)
    c8 a r4 r8 d'16( c) d( c) b( a)
  }
}

BassFigures = \figuremode {
  r1
  r2 <6 5>4 <3>
  r1
  <5>2 <6 5>8 <\t \t> <_+>4
  r2... <6 _+>16
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
