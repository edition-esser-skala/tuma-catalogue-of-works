\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "[no tempo]"
    R1
    g'2 a4. h8
    c g c4~ c8 h d4~
    d8 c c4~ c8 a d4
    g, r r2
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "[no tempo]"
    c2 d
    e f8 d d4
    e2 f
    g4 e r2
    d4 e f g8 f
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    R1
    g'8.^\tutti g16 g8 g a4 a8 h
    c g c c16 c c8 h d4~
    d8 c c c c a d4
    g, r r2
  }
}

SopranoLyrics = \lyricmode {
  Fa -- cta est Ju -- dae -- a san --
  cti -- fi -- ca -- ti -- o e -- ius, Is --
  ra -- el po -- te -- stas e --
  ius.
}

Alto = {
  \relative c' {
    \clef alto
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    c2^\tutti d4 d8 d
    e e16 e e8 e f d d d
    e4 e8 e f4 f8 f
    g8. g16 e4 r2
    d8. d16 e8 e f f g f
  }
}

AltoLyrics = \lyricmode {
  In ex -- i -- tu
  Is -- ra -- el de Ae -- gy -- pto do -- mus
  Ja -- cob de po -- pu -- lo
  bar -- ba -- ro.
  Quid est ti -- bi ma -- re quod "fu -"
}

Tenore = {
  \relative c' {
    \clef tenor
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    R1*3
    g4^\tutti g8 g a4 a
    h8. h16 c8 c c4 h
  }
}

TenoreLyrics = \lyricmode {
  Mon -- tes ex -- ul -- ta --
  ve -- runt ut a -- ri -- "e -"
}

Basso = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    R1*2
    c4.^\tutti c8 d4 d8 d
    e4 c8 e f4 f8 f
    f8. f16 e8 e d2
  }
}

BassoLyrics = \lyricmode {
  Ma -- re vi -- dit et
  fu -- git Jor -- da -- nis con --
  ver -- sus est re -- "tror -"
}

Organo = {
  \relative c {
    \clef soprano
    \key c \major \time 4/4 \tempoMarkup "[no tempo]"
    << {
      r1
      g''2 a4. h8
    } \\ {
      c,2-\tutti d
      e f8 d d4
    } >>
    \clef bass c,2 d
    e4 c8 e f2~
    f4 e d2
  }
}

BassFigures = \figuremode {
  r1
  r
  r2 <7>8 <6> <8>4
  <7>8 <6>4. <5>4 <6>
  <4 2> <6> <7> <6>
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
